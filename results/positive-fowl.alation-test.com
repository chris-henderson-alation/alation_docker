Hit:1 http://cdn-aws.deb.debian.org/debian buster InRelease
Hit:2 http://cdn-aws.deb.debian.org/debian buster-updates InRelease
Hit:3 http://cdn-aws.deb.debian.org/debian buster-backports InRelease
Hit:4 http://security.debian.org/debian-security buster/updates InRelease
Reading package lists...
Building dependency tree...
Reading state information...
67 packages can be upgraded. Run 'apt list --upgradable' to see them.
Reading package lists...
Building dependency tree...
Reading state information...
The following additional packages will be installed:
  binutils binutils-common binutils-x86-64-linux-gnu cgroupfs-mount docker.io
  git git-man libbinutils liberror-perl libgdbm-compat4 libintl-perl
  libintl-xs-perl libltdl7 libmodule-find-perl libmodule-scandeps-perl
  libnspr4 libnss3 libperl5.28 libproc-processtable-perl
  libsort-naturally-perl libterm-readkey-perl needrestart patch perl
  perl-modules-5.28 runc tini
Suggested packages:
  binutils-doc docker-doc aufs-tools btrfs-progs debootstrap rinse xfsprogs
  zfs-fuse | zfsutils git-daemon-run | git-daemon-sysvinit git-doc git-el
  git-email git-gui gitk gitweb git-cvs git-mediawiki git-svn
  needrestart-session | libnotify-bin iucode-tool ed diffutils-doc perl-doc
  libterm-readline-gnu-perl | libterm-readline-perl-perl make libb-debug-perl
  liblocale-codes-perl
The following NEW packages will be installed:
  alation-hydra binutils binutils-common binutils-x86-64-linux-gnu
  cgroupfs-mount docker.io git git-man libbinutils liberror-perl
  libgdbm-compat4 libintl-perl libintl-xs-perl libltdl7 libmodule-find-perl
  libmodule-scandeps-perl libnspr4 libnss3 libperl5.28
  libproc-processtable-perl libsort-naturally-perl libterm-readkey-perl
  needrestart patch perl perl-modules-5.28 runc tini
0 upgraded, 28 newly installed, 0 to remove and 67 not upgraded.
Need to get 77.9 MB/99.0 MB of archives.
After this operation, 373 MB of additional disk space will be used.
Get:1 http://security.debian.org/debian-security buster/updates/main amd64 docker.io amd64 18.09.1+dfsg1-7.1+deb10u3 [53.6 MB]
Get:2 http://cdn-aws.deb.debian.org/debian buster/main amd64 perl-modules-5.28 all 5.28.1-6+deb10u1 [2873 kB]
Get:3 http://cdn-aws.deb.debian.org/debian buster/main amd64 libgdbm-compat4 amd64 1.18.1-4 [44.1 kB]
Get:4 http://cdn-aws.deb.debian.org/debian buster/main amd64 libperl5.28 amd64 5.28.1-6+deb10u1 [3894 kB]
Get:5 http://cdn-aws.deb.debian.org/debian buster/main amd64 perl amd64 5.28.1-6+deb10u1 [204 kB]
Get:6 http://cdn-aws.deb.debian.org/debian buster/main amd64 libltdl7 amd64 2.4.6-9 [390 kB]
Get:7 http://cdn-aws.deb.debian.org/debian buster/main amd64 libnspr4 amd64 2:4.20-1 [112 kB]
Get:8 http://cdn-aws.deb.debian.org/debian buster/main amd64 libnss3 amd64 2:3.42.1-1+deb10u3 [1159 kB]
Get:9 http://cdn-aws.deb.debian.org/debian buster/main amd64 runc amd64 1.0.0~rc6+dfsg1-3 [2572 kB]
Get:10 /tmp/tmp.2z0tAM6o5p/hydra-1.0.2.132563.deb alation-hydra amd64 1.0.2.132563 [21.1 MB]
Get:11 http://cdn-aws.deb.debian.org/debian buster/main amd64 tini amd64 0.18.0-1 [247 kB]
Get:12 http://cdn-aws.deb.debian.org/debian buster/main amd64 binutils-common amd64 2.31.1-16 [2073 kB]
Get:13 http://cdn-aws.deb.debian.org/debian buster/main amd64 libbinutils amd64 2.31.1-16 [478 kB]
Get:14 http://cdn-aws.deb.debian.org/debian buster/main amd64 binutils-x86-64-linux-gnu amd64 2.31.1-16 [1823 kB]
Get:15 http://cdn-aws.deb.debian.org/debian buster/main amd64 binutils amd64 2.31.1-16 [56.8 kB]
Get:16 http://cdn-aws.deb.debian.org/debian buster/main amd64 cgroupfs-mount all 1.4 [6276 B]
Get:17 http://cdn-aws.deb.debian.org/debian buster/main amd64 liberror-perl all 0.17027-2 [30.9 kB]
Get:18 http://cdn-aws.deb.debian.org/debian buster/main amd64 git-man all 1:2.20.1-2+deb10u3 [1620 kB]
Get:19 http://cdn-aws.deb.debian.org/debian buster/main amd64 git amd64 1:2.20.1-2+deb10u3 [5633 kB]
Get:20 http://cdn-aws.deb.debian.org/debian buster/main amd64 libintl-perl all 1.26-2 [756 kB]
Get:21 http://cdn-aws.deb.debian.org/debian buster/main amd64 libintl-xs-perl amd64 1.26-2+b4 [39.9 kB]
Get:22 http://cdn-aws.deb.debian.org/debian buster/main amd64 libmodule-find-perl all 0.13-1 [10.3 kB]
Get:23 http://cdn-aws.deb.debian.org/debian buster/main amd64 libmodule-scandeps-perl all 1.27-1 [44.0 kB]
Get:24 http://cdn-aws.deb.debian.org/debian buster/main amd64 libproc-processtable-perl amd64 0.56-1 [43.9 kB]
Get:25 http://cdn-aws.deb.debian.org/debian buster/main amd64 libsort-naturally-perl all 1.03-2 [13.5 kB]
Get:26 http://cdn-aws.deb.debian.org/debian buster/main amd64 libterm-readkey-perl amd64 2.38-1 [27.4 kB]
Get:27 http://cdn-aws.deb.debian.org/debian buster/main amd64 needrestart all 3.4-5 [57.4 kB]
Get:28 http://cdn-aws.deb.debian.org/debian buster/main amd64 patch amd64 2.7.6-3+deb10u1 [126 kB]
Fetched 77.9 MB in 4s (18.6 MB/s)
Selecting previously unselected package perl-modules-5.28.
(Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 40114 files and directories currently installed.)
Preparing to unpack .../00-perl-modules-5.28_5.28.1-6+deb10u1_all.deb ...
Unpacking perl-modules-5.28 (5.28.1-6+deb10u1) ...
Selecting previously unselected package libgdbm-compat4:amd64.
Preparing to unpack .../01-libgdbm-compat4_1.18.1-4_amd64.deb ...
Unpacking libgdbm-compat4:amd64 (1.18.1-4) ...
Selecting previously unselected package libperl5.28:amd64.
Preparing to unpack .../02-libperl5.28_5.28.1-6+deb10u1_amd64.deb ...
Unpacking libperl5.28:amd64 (5.28.1-6+deb10u1) ...
Selecting previously unselected package perl.
Preparing to unpack .../03-perl_5.28.1-6+deb10u1_amd64.deb ...
Unpacking perl (5.28.1-6+deb10u1) ...
Selecting previously unselected package libltdl7:amd64.
Preparing to unpack .../04-libltdl7_2.4.6-9_amd64.deb ...
Unpacking libltdl7:amd64 (2.4.6-9) ...
Selecting previously unselected package libnspr4:amd64.
Preparing to unpack .../05-libnspr4_2%3a4.20-1_amd64.deb ...
Unpacking libnspr4:amd64 (2:4.20-1) ...
Selecting previously unselected package libnss3:amd64.
Preparing to unpack .../06-libnss3_2%3a3.42.1-1+deb10u3_amd64.deb ...
Unpacking libnss3:amd64 (2:3.42.1-1+deb10u3) ...
Selecting previously unselected package runc.
Preparing to unpack .../07-runc_1.0.0~rc6+dfsg1-3_amd64.deb ...
Unpacking runc (1.0.0~rc6+dfsg1-3) ...
Selecting previously unselected package tini.
Preparing to unpack .../08-tini_0.18.0-1_amd64.deb ...
Unpacking tini (0.18.0-1) ...
Selecting previously unselected package docker.io.
Preparing to unpack .../09-docker.io_18.09.1+dfsg1-7.1+deb10u3_amd64.deb ...
Unpacking docker.io (18.09.1+dfsg1-7.1+deb10u3) ...
Selecting previously unselected package alation-hydra.
Preparing to unpack .../10-hydra-1.0.2.132563.deb ...
Unpacking alation-hydra (1.0.2.132563) ...
Selecting previously unselected package binutils-common:amd64.
Preparing to unpack .../11-binutils-common_2.31.1-16_amd64.deb ...
Unpacking binutils-common:amd64 (2.31.1-16) ...
Selecting previously unselected package libbinutils:amd64.
Preparing to unpack .../12-libbinutils_2.31.1-16_amd64.deb ...
Unpacking libbinutils:amd64 (2.31.1-16) ...
Selecting previously unselected package binutils-x86-64-linux-gnu.
Preparing to unpack .../13-binutils-x86-64-linux-gnu_2.31.1-16_amd64.deb ...
Unpacking binutils-x86-64-linux-gnu (2.31.1-16) ...
Selecting previously unselected package binutils.
Preparing to unpack .../14-binutils_2.31.1-16_amd64.deb ...
Unpacking binutils (2.31.1-16) ...
Selecting previously unselected package cgroupfs-mount.
Preparing to unpack .../15-cgroupfs-mount_1.4_all.deb ...
Unpacking cgroupfs-mount (1.4) ...
Selecting previously unselected package liberror-perl.
Preparing to unpack .../16-liberror-perl_0.17027-2_all.deb ...
Unpacking liberror-perl (0.17027-2) ...
Selecting previously unselected package git-man.
Preparing to unpack .../17-git-man_1%3a2.20.1-2+deb10u3_all.deb ...
Unpacking git-man (1:2.20.1-2+deb10u3) ...
Selecting previously unselected package git.
Preparing to unpack .../18-git_1%3a2.20.1-2+deb10u3_amd64.deb ...
Unpacking git (1:2.20.1-2+deb10u3) ...
Selecting previously unselected package libintl-perl.
Preparing to unpack .../19-libintl-perl_1.26-2_all.deb ...
Unpacking libintl-perl (1.26-2) ...
Selecting previously unselected package libintl-xs-perl.
Preparing to unpack .../20-libintl-xs-perl_1.26-2+b4_amd64.deb ...
Unpacking libintl-xs-perl (1.26-2+b4) ...
Selecting previously unselected package libmodule-find-perl.
Preparing to unpack .../21-libmodule-find-perl_0.13-1_all.deb ...
Unpacking libmodule-find-perl (0.13-1) ...
Selecting previously unselected package libmodule-scandeps-perl.
Preparing to unpack .../22-libmodule-scandeps-perl_1.27-1_all.deb ...
Unpacking libmodule-scandeps-perl (1.27-1) ...
Selecting previously unselected package libproc-processtable-perl.
Preparing to unpack .../23-libproc-processtable-perl_0.56-1_amd64.deb ...
Unpacking libproc-processtable-perl (0.56-1) ...
Selecting previously unselected package libsort-naturally-perl.
Preparing to unpack .../24-libsort-naturally-perl_1.03-2_all.deb ...
Unpacking libsort-naturally-perl (1.03-2) ...
Selecting previously unselected package libterm-readkey-perl.
Preparing to unpack .../25-libterm-readkey-perl_2.38-1_amd64.deb ...
Unpacking libterm-readkey-perl (2.38-1) ...
Selecting previously unselected package needrestart.
Preparing to unpack .../26-needrestart_3.4-5_all.deb ...
Unpacking needrestart (3.4-5) ...
Selecting previously unselected package patch.
Preparing to unpack .../27-patch_2.7.6-3+deb10u1_amd64.deb ...
Unpacking patch (2.7.6-3+deb10u1) ...
Setting up perl-modules-5.28 (5.28.1-6+deb10u1) ...
Setting up binutils-common:amd64 (2.31.1-16) ...
Setting up runc (1.0.0~rc6+dfsg1-3) ...
Setting up libnspr4:amd64 (2:4.20-1) ...
Setting up tini (0.18.0-1) ...
Setting up patch (2.7.6-3+deb10u1) ...
Setting up libgdbm-compat4:amd64 (1.18.1-4) ...
Setting up libltdl7:amd64 (2.4.6-9) ...
Setting up libperl5.28:amd64 (5.28.1-6+deb10u1) ...
Setting up git-man (1:2.20.1-2+deb10u3) ...
Setting up cgroupfs-mount (1.4) ...
Setting up libbinutils:amd64 (2.31.1-16) ...
Setting up binutils-x86-64-linux-gnu (2.31.1-16) ...
Setting up libnss3:amd64 (2:3.42.1-1+deb10u3) ...
Setting up docker.io (18.09.1+dfsg1-7.1+deb10u3) ...
Created symlink /etc/systemd/system/multi-user.target.wants/docker.service → /lib/systemd/system/docker.service.
Created symlink /etc/systemd/system/sockets.target.wants/docker.socket → /lib/systemd/system/docker.socket.
Setting up binutils (2.31.1-16) ...
Setting up perl (5.28.1-6+deb10u1) ...
Setting up alation-hydra (1.0.2.132563) ...
Synchronizing state of docker.service with SysV service script with /lib/systemd/systemd-sysv-install.
Executing: /lib/systemd/systemd-sysv-install enable docker
Created symlink /etc/systemd/system/multi-user.target.wants/hydra.service → /lib/systemd/system/hydra.service.
Setting up libmodule-find-perl (0.13-1) ...
Setting up libproc-processtable-perl (0.56-1) ...
Setting up libintl-perl (1.26-2) ...
Setting up libterm-readkey-perl (2.38-1) ...
Setting up libsort-naturally-perl (1.03-2) ...
Setting up libmodule-scandeps-perl (1.27-1) ...
Setting up needrestart (3.4-5) ...
Setting up libintl-xs-perl (1.26-2+b4) ...
Setting up liberror-perl (0.17027-2) ...
Setting up git (1:2.20.1-2+deb10u3) ...
Processing triggers for systemd (241-7~deb10u4) ...
Processing triggers for man-db (2.8.5-2) ...
Processing triggers for libc-bin (2.28-10) ...
Containers: 0
 Running: 0
 Paused: 0
 Stopped: 0
Images: 0
Server Version: 18.09.1
Storage Driver: overlay2
 Backing Filesystem: extfs
 Supports d_type: true
 Native Overlay Diff: true
Logging Driver: json-file
Cgroup Driver: cgroupfs
Plugins:
 Volume: local
 Network: bridge host macvlan null overlay
 Log: awslogs fluentd gcplogs gelf journald json-file local logentries splunk syslog
Swarm: inactive
Runtimes: runc
Default Runtime: runc
Init Binary: docker-init
containerd version: 9754871865f7fe2f4e74d43e2fc7ccd237edcbce
runc version: 1.0.0~rc6+dfsg1-3
init version: v0.18.0 (expected: fec3683b971d9c3ef73f284f176672c44b448662)
Security Options:
 apparmor
 seccomp
  Profile: default
Kernel Version: 4.19.0-11-cloud-amd64
Operating System: Debian GNU/Linux 10 (buster)
OSType: linux
Architecture: x86_64
CPUs: 2
Total Memory: 14.92GiB
Name: ip-10-13-83-167
ID: G4WI:Y6N6:QO6U:LCSD:J4QJ:HDNP:XMDT:ZMCM:56RA:5H5R:RRCM:UJTH
Docker Root Dir: /var/lib/docker
Debug Mode (client): false
Debug Mode (server): false
Registry: https://index.docker.io/v1/
Labels:
Experimental: false
Insecure Registries:
 127.0.0.0/8
Live Restore Enabled: false

39deaf730ce9        agent               "agent"             2 seconds ago       Up Less than a second                       agent
8b9eb7fc239e        ca                  "ca"                4 seconds ago       Up 2 seconds                                ca
Reading package lists...
Building dependency tree...
Reading state information...
The following packages were automatically installed and are no longer required:
  cgroupfs-mount git git-man liberror-perl libltdl7 libnspr4 libnss3 patch
  runc tini
Use 'sudo apt autoremove' to remove them.
The following packages will be REMOVED:
  docker.io
The following NEW packages will be installed:
  alation-containerizer
0 upgraded, 1 newly installed, 1 to remove and 67 not upgraded.
Need to get 0 B/64.3 MB of archives.
After this operation, 238 MB disk space will be freed.
Get:1 /home/ssh-user/alation-containerizer_1.0.0_amd64.deb alation-containerizer amd64 1.0.0 [64.3 MB]
dpkg: docker.io: dependency problems, but removing anyway as you requested:
 alation-hydra depends on docker.io (>= 18.09.1) | docker-ce (>= 18.09.1); however:
  Package docker.io is to be removed.
  Package docker-ce is not installed.

(Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 44326 files and directories currently installed.)
Removing docker.io (18.09.1+dfsg1-7.1+deb10u3) ...
'/usr/share/docker.io/contrib/nuke-graph-directory.sh' -> '/var/lib/docker/nuke-graph-directory.sh'
Selecting previously unselected package alation-containerizer.
(Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 44095 files and directories currently installed.)
Preparing to unpack .../alation-containerizer_1.0.0_amd64.deb ...
Unpacking alation-containerizer (1.0.0) ...
Setting up alation-containerizer (1.0.0) ...
Removed /etc/systemd/system/docker.service.
Removed /etc/systemd/system/docker.socket.
Processing triggers for man-db (2.8.5-2) ...

Running kernel seems to be up-to-date.

No services need to be restarted.

No containers need to be restarted.

No user sessions are running outdated binaries.
Client:
 Context:    default
 Debug Mode: false

Server:
 Containers: 2
  Running: 0
  Paused: 0
  Stopped: 2
 Images: 3
 Server Version: 20.10.5
 Storage Driver: overlay2
  Backing Filesystem: extfs
  Supports d_type: true
  Native Overlay Diff: true
 Logging Driver: json-file
 Cgroup Driver: cgroupfs
 Cgroup Version: 1
 Plugins:
  Volume: local
  Network: bridge host ipvlan macvlan null overlay
  Log: awslogs fluentd gcplogs gelf journald json-file local logentries splunk syslog
 Swarm: inactive
 Runtimes: io.containerd.runc.v2 io.containerd.runtime.v1.linux runc
 Default Runtime: runc
 Init Binary: docker-init
 containerd version: 269548fa27e0089a8b8278fc4fc781d7f65a939b
 runc version: 1.0.0~rc6+dfsg1-3
 init version: de40ad0
 Security Options:
  apparmor
  seccomp
   Profile: default
 Kernel Version: 4.19.0-11-cloud-amd64
 Operating System: Debian GNU/Linux 10 (buster)
 OSType: linux
 Architecture: x86_64
 CPUs: 2
 Total Memory: 14.92GiB
 Name: ip-10-13-83-167
 ID: G4WI:Y6N6:QO6U:LCSD:J4QJ:HDNP:XMDT:ZMCM:56RA:5H5R:RRCM:UJTH
 Docker Root Dir: /var/lib/docker
 Debug Mode: false
 Registry: https://index.docker.io/v1/
 Labels:
 Experimental: false
 Insecure Registries:
  127.0.0.0/8
 Live Restore Enabled: false
 Product License: Community Engine

39deaf730ce9   agent     "agent"   48 seconds ago   Up Less than a second             agent
8b9eb7fc239e   ca        "ca"      50 seconds ago   Up Less than a second             ca
Reading package lists...
Building dependency tree...
Reading state information...
Suggested packages:
  docker-doc aufs-tools btrfs-progs debootstrap rinse xfsprogs zfs-fuse
  | zfsutils
The following packages will be REMOVED:
  alation-containerizer
The following NEW packages will be installed:
  docker.io
0 upgraded, 1 newly installed, 1 to remove and 67 not upgraded.
Need to get 53.6 MB of archives.
After this operation, 238 MB of additional disk space will be used.
Get:1 http://security.debian.org/debian-security buster/updates/main amd64 docker.io amd64 18.09.1+dfsg1-7.1+deb10u3 [53.6 MB]
Fetched 53.6 MB in 3s (16.4 MB/s)
dpkg: alation-containerizer: dependency problems, but removing anyway as you requested:
 alation-hydra depends on docker.io (>= 18.09.1) | docker-ce (>= 18.09.1); however:
  Package docker.io is not installed.
  Package alation-containerizer which provides docker.io is to be removed.
  Package docker-ce is not installed.
  Package alation-containerizer which provides docker-ce is to be removed.
 alation-hydra depends on docker.io (>= 18.09.1) | docker-ce (>= 18.09.1); however:
  Package docker.io is not installed.
  Package alation-containerizer which provides docker.io is to be removed.
  Package docker-ce is not installed.
  Package alation-containerizer which provides docker-ce is to be removed.

(Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 44114 files and directories currently installed.)
Removing alation-containerizer (1.0.0) ...
Selecting previously unselected package docker.io.
(Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 44095 files and directories currently installed.)
Preparing to unpack .../docker.io_18.09.1+dfsg1-7.1+deb10u3_amd64.deb ...
Unpacking docker.io (18.09.1+dfsg1-7.1+deb10u3) ...
Setting up docker.io (18.09.1+dfsg1-7.1+deb10u3) ...
Processing triggers for systemd (241-7~deb10u4) ...
Processing triggers for man-db (2.8.5-2) ...

Running kernel seems to be up-to-date.

No services need to be restarted.

No containers need to be restarted.

No user sessions are running outdated binaries.
Containers: 2
 Running: 0
 Paused: 0
 Stopped: 2
Images: 3
Server Version: 18.09.1
Storage Driver: overlay2
 Backing Filesystem: extfs
 Supports d_type: true
 Native Overlay Diff: true
Logging Driver: json-file
Cgroup Driver: cgroupfs
Plugins:
 Volume: local
 Network: bridge host macvlan null overlay
 Log: awslogs fluentd gcplogs gelf journald json-file local logentries splunk syslog
Swarm: inactive
Runtimes: runc
Default Runtime: runc
Init Binary: docker-init
containerd version: 9754871865f7fe2f4e74d43e2fc7ccd237edcbce
runc version: 1.0.0~rc6+dfsg1-3
init version: v0.18.0 (expected: fec3683b971d9c3ef73f284f176672c44b448662)
Security Options:
 apparmor
 seccomp
  Profile: default
Kernel Version: 4.19.0-11-cloud-amd64
Operating System: Debian GNU/Linux 10 (buster)
OSType: linux
Architecture: x86_64
CPUs: 2
Total Memory: 14.92GiB
Name: ip-10-13-83-167
ID: G4WI:Y6N6:QO6U:LCSD:J4QJ:HDNP:XMDT:ZMCM:56RA:5H5R:RRCM:UJTH
Docker Root Dir: /var/lib/docker
Debug Mode (client): false
Debug Mode (server): false
Registry: https://index.docker.io/v1/
Labels:
Experimental: false
Insecure Registries:
 127.0.0.0/8
Live Restore Enabled: false

39deaf730ce9        agent               "agent"             About a minute ago   Up Less than a second                       agent
8b9eb7fc239e        ca                  "ca"                About a minute ago   Up Less than a second                       ca
SUCCESS
