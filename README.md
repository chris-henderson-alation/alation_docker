# Alation Docker

## tl;dr

```bash
$ make clean package
$ ls target/
# Hurrah! One version of Docker to rule them all!
alation_docker.deb  alation_docker.rpm
$ typical_jenkins_upload_to_artifactory.sh target/*
```

This build produces a single `.deb` and a single `.rpm` which packages Docker 20.10.2 (this is simply the absolute latest version as of doing this spike, I'm sure the version can be lower if we want it).

So far, these unified Docker packages hase installed and executed on every platform that we have tried (enumerated in [Leverage the Docker Static Builds](#matrix)).

## Problem
Ready-to-go installations for Docker turned to not be nearly as ubiquitous as the OCF and AA teams had initially thought.

* The name of the package has changed over time (`docker`, `docker.io`, `docker-ce` and so on) and what, exactly, it is named in a given repository can vary. This makes it somewhat difficult to script against and very difficult to document against (support rightfully does not appreciate the line, "...it _tends_ to be called...").
* Red Hat has engaged in some anti-competitive behavior in promoting their own containerization product, [Podman](https://podman.io/). The result is that installations of Docker after RHEL 8 are not supported by either Red Hat nor Docker.
* Getting a _specific_ version of Docker (especially a relatively modern one) can be difficult for older distributions, such as CentOS 7 or Ubuntu 16. High enough versions _exist_, but  they're not the version present in the default repo.
* While the default Docker configuration works fine, we are eventually going to have to ship a configuration that is Alation's opinion on running Docker - how do we enforce this everywhere?
* Air gapped instances (no internet connectivity) are as painful as ever.
* Version pinning in documentation and hoping that a given repository has it is basically the same as not version pinning at all.

The solution that Alation has turned to time-and-time again is pre-packaging everything that we need. So let's investigate pre-packaging.

# Pre-Packaging

Pre-packaging what exactly? Docker must be installed outside of a chroot, which means that we are not intimately in control of the environment. Specifically, `docker` and `containerd` are Go programs which make foreign function interface calls into C. This in turn naturally creates dependencies upon specific builds of, say, `pthreads` or `libc`. Even the smallest differences in the ABI of these objects lead to runtime linker errors, hence why there are platform specific builds to begin with.

We have identified two paths thus far.

### The Minimum Viable Set

Find the minimum viable set of RPM and Debian installation packages that cover Alation's support matrix. For example, CentOS 8 RPMs work on RHEL 8 so we can double reuse those for RPMs for those two platforms.

The following is a non-exhaustive sampling of which packages for what platform appears to work of other platforms as well.

* CentOS 8 work on RHEL 8
* CentOS 8 does not work on CentOS 7 due to a newer grammar level of the RPM script itself.
* CentOS 7 does not work on CentOS 8 due to a broken dependency.
* No version of Fedora works (as in executes successfully) on the other versions of Fedora due to differing versions of GLIBC breaking the linker.
* Ubuntu 20 appears to work for 18 and 16 as well.
* Debian 10 appears to work for 9.
* Oracle Linux not tested yet.

All told, so far it's coming out to about 500MB worth of installation packages in order to cover this matrix. Note that this is VERY likely to grow, especially due to Fedora (which is a bleeding-edge distribution that does not shy away from breakages between releases, hence the broken GLIBC `.so`s mentioned above). As these packages are binary data, they are not compressing particularly well.

Pros:

* As simple as wrangling as many packages as necessary.
* Relatively low effort for engineering.


Cons:
* You will likely have to go and find a good package for each new platform supported.
* Starts out as about a 500MB bundle of installables.
* The above FS footprint for is likely to grow steadily over time as breaking changes are made (Fedora specifically as it is a bleeding edge operating system that is not shy about breaking, for example, `GLIBC` which broke between 32 and 33).
* You would need to maintain an `install.sh` script that can go through a sort of install wizard in order to select the correct package ("Which OS/version are you? We are installing this exact package, is that okay?"). This install script will require training in order to use and will inevitably raise a support escalation the first time the wrong package is installed, mysterious linker errors pop up, and the box has to be walked back to a working state (for which the strategy on how to do so can change from platform to platform).

### Leverage the Docker Static Builds

Docker provides [statically linked builds](https://download.docker.com/linux/static/stable/x86_64/) of their software. That is to say, the aforementioned dependencies on dynamically linked C objects no longer exist as those dependencies are baked directly into the binary instead. Docker provides [documentation](https://docs.docker.com/engine/install/binaries/) on working with these static builds. 

Statically linked builds are attractive due to their very high portability (any reasonable statically linked program should work against most Linux kernels). In fact, when using Docker's static builds, the only platform specific behavior that we have observed are integrations with the packaging system.

Which begs the question - if we can replicate Docker's `.deb` and `.rpm` builds, but with their static builds instead of the dynamic ones, will that give us a single RPM/Deb to rule them all?

Perhaps we can use the [docker-ce-packaging](https://github.com/docker/docker-ce-packaging) repo as a basis for how to package Docker. The most complicated parts of their build process is compiling the platform dependent binaries. Outside of that, however, it is mostly putting the files in the right spot with some moderate `pre/post` installation scripting inside the `.rpm` and `.deb`packages. So if we already have the pre-build binaries then perhaps constructing these packages will not be so difficult.

Restated, if we take these prebuilt binaries, copy Docker's unit files for `systemd`, and simply put them in the right spot - will this all "just work"?


#### Smoke Testing these Packages 
A smoke test consists of, essentially...

```bash
$ yum/apt install alation_docker.rpm/deb
$ systemctl start docker
$ docker run --rm -it alpine
/ # pwd
/
/ # whoami
root
/ # exit
$
```

An installation of OCF was also done using this package.

<a name="matrix"></a>
The single RPM generated by this repo has smoke tested successfully on

* CentOS 7
* CentOS 8
* RHEL 7
* RHEL 8
* Fedora 32
* Fedora 33
* Oracle Enterprise Linux 7
* Oracle Enterprise Linux 8
* AWS Linux 2

The single DEB generated by this repo has smoke tested successfully on

* Ubuntu 16 (Xenial)
* Ubuntu 18 (Bionic)
* Ubuntu 20 (Focal) (notes: needed iptables installed, the community has moved onto nftables)
* Debian 9 (Stretch)
* Debian 10 (Buster)

Note that the above two packages are actually isntalling the _exact_ same Docker binaries - they are simply packaged differently to satisfy the given package manager.

Pros: 
* One RPM for all RPM based systems. One DEB for all Debian based systems. This is much easier for support.
* Complete homogeneity of Docker across all installations of Alation. This may end up being especially important as we begin orchestration efforts and would like to ensure homogeneity within each cluster.
* The FS footprint for these two package combined is about 140MB and is less likely to grow over time (we can cut this in half if we get clever and only package the `.deb` with `alation.deb` and the `.rpm` with `alation.rpm`).
* Being dependent upon a single binary is a very stable development target (like version pinning, but a step above and beyond).
* Our dependency surface area is reduced down essentially to `iptables` and `systemd` so it is much more likely that these packages will not break from release-to-release.
* We get to name the package `alation_docker` and declare whatever demands we want of it (for example, `alation_docker` may be mutually exclusive with `docker` to make sure that people don't side install some other version from the internet).
* By default, Docker ships with no configuration (which results in a default configuration at runtime). As is, for each new Alation service that wants to use Docker that service has to figure out how to (or if to) configure Docker. If we package our own Docker then we can install a daemon configuration that is OUR opinion on what a Docker installation on Alation should look like.

Cons:
* We have to maintain a packaging repo such as this.
* ...it just _feels_ like there's some unknown-unknown that we are missing here.