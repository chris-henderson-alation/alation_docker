Name: alation_docker
Version: 1.0
Release: 1
Epoch: 3
Summary: The open-source application container engine
Group: Tools/Docker
License: ASL 2.0
URL: https://www.docker.com
Vendor: Docker
Packager: Docker <support@docker.com>

BuildRequires: systemd-rpm-macros

Requires: /usr/sbin/groupadd
Requires: iptables


# conflicting packages
Conflicts: docker
Conflicts: docker-io
Conflicts: docker-engine-cs
Conflicts: docker-ee

# Obsolete packages
Obsoletes: docker-ce-selinux
Obsoletes: docker-engine-selinux
Obsoletes: docker-engine

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
/usr/bin/dockerd
/usr/bin/dockerd-rootless-setuptool.sh
/usr/bin/dockerd-rootless.sh
/usr/bin/docker-init
/usr/bin/docker-proxy
/usr/bin/rootlesskit
/usr/bin/rootlesskit-docker-proxy
/usr/bin/runc
/usr/bin/vpnkit


%post
%systemd_post docker.service
if ! getent group docker > /dev/null; then
    groupadd --system docker
fi

%preun
%systemd_preun docker.service

%postun
%systemd_postun_with_restart docker.service

%changelog
