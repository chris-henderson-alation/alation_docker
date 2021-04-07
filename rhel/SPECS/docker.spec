Name: alation_docker
Version: 20.10.5
Release: 1
Epoch: 3
Summary: The open-source application container engine
Group: Tools/Docker
License: ASL 2.0
URL: https://www.docker.com
Vendor: Docker
Packager: Docker <support@docker.com>

BuildRequires: systemd-rpm-macros

Requires: /bin/sh
Requires: /usr/sbin/groupadd
Requires: iptables


Provides: docker
Provides: docker-io
Provides: docker-engine-cs
Provides: docker-ee
Provides: docker-ce-selinux
Provides: docker-engine-selinux
Provides: docker-engine
Provides: docker-ce-cli
Provides: docker-ce
Provides: docker-ce-rootless-extras
Provides: containerd.io
Provides: containerd
Provides: runc

Obsoletes: docker
Obsoletes: docker-io
Obsoletes: docker-engine-cs
Obsoletes: docker-ee
Obsoletes: docker-ce-selinux
Obsoletes: docker-engine-selinux
Obsoletes: docker-engine
Obsoletes: docker-ce-cli
Obsoletes: docker-ce
Obsoletes: docker-ce-rootless-extras
Obsoletes: containerd.io
Obsoletes: containerd
Obsoletes: runc
Obsoletes: moby-engine

## conflicting packages
#Obsoletes: docker
#Obsoletes: docker-io
#Obsoletes: docker-engine-cs
#Obsoletes: docker-ee
#
## Obsolete packages
#Obsoletes: docker-ce-selinux
#Obsoletes: docker-engine-selinux
#Obsoletes: docker-engine

%description
Docker is a product for you to build, ship and run any application as a
lightweight container.

Docker containers are both hardware-agnostic and platform-agnostic. This means
they can run anywhere, from your laptop to the largest cloud compute instance and
everything in between - and they don't require you to use a particular
language, framework or packaging system. That makes them great building blocks
for deploying and scaling web apps, databases, and backend services without
depending on a particular stack or provider.


%files
/etc/containerd/config.toml

/usr/lib/systemd/system/containerd.service
/usr/lib/systemd/system/docker.service
/usr/lib/systemd/system/docker.socket

/usr/bin/containerd
/usr/bin/containerd-shim
/usr/bin/containerd-shim-runc-v2
/usr/bin/ctr
/usr/bin/docker
/usr/bin/docker-compose
/usr/bin/docker-compose-image
/usr/bin/dockerd
/usr/bin/dockerd-rootless-setuptool.sh
/usr/bin/dockerd-rootless.sh
/usr/bin/docker-init
/usr/bin/docker-proxy
/usr/bin/rootlesskit
/usr/bin/rootlesskit-docker-proxy
/usr/bin/runc
/usr/bin/vpnkit

%pre
systemctl stop docker.service > /dev/null 2>&1 || :
systemctl stop docker.socket > /dev/null 2>&1 || :
systemctl stop containerd.service > /dev/null 2>&1 || :

%post
%systemd_post docker.service
if [ $1 -eq 1 ] ; then
        # Initial installation
        systemctl preset containerd.service >/dev/null 2>&1 || :
fi
if ! getent group docker > /dev/null; then
    groupadd --system docker
fi
systemctl daemon-reload >/dev/null 2>&1 || :
systemctl start docker
# Note that this does not work due to tmp selinux
# /usr/bin/docker load -i /usr/bin/docker-compose-image

%preun
%systemd_preun docker.service
systemctl stop docker.service > /dev/null 2>&1 || :
systemctl stop docker.socket > /dev/null 2>&1 || :
if [ $1 -eq 0 ] ; then
        # Package removal, not upgrade
        systemctl --no-reload disable containerd.service > /dev/null 2>&1 || :
        systemctl stop containerd.service > /dev/null 2>&1 || :
fi

%postun
%systemd_postun_with_restart docker.service
systemctl daemon-reload >/dev/null 2>&1 || :
if [ $1 -ge 1 ] ; then
        # Package upgrade, not uninstall
        systemctl try-restart containerd.service >/dev/null 2>&1 || :
fi


%changelog
