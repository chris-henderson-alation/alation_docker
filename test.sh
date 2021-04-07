#!/usr/bin/env bash

set -ex

CENTOS_7=(
  "https://download.docker.com/linux/centos/7/x86_64/stable/Packages/containerd.io-1.2.0-3.el7.x86_64.rpm"
  "https://download.docker.com/linux/centos/7/x86_64/stable/Packages/docker-ce-18.09.0-3.el7.x86_64.rpm"
  "https://download.docker.com/linux/centos/7/x86_64/stable/Packages/docker-ce-cli-18.09.0-3.el7.x86_64.rpm"
  "http://mirror.centos.org/centos/7/extras/x86_64/Packages/container-selinux-2.107-3.el7.noarch.rpm"
)
CENTOS_8=(
  "https://download.docker.com/linux/centos/8/x86_64/stable/Packages/containerd.io-1.3.7-3.1.el8.x86_64.rpm"
  "https://download.docker.com/linux/centos/8/x86_64/stable/Packages/docker-ce-19.03.13-3.el8.x86_64.rpm"
  "https://download.docker.com/linux/centos/8/x86_64/stable/Packages/docker-ce-cli-19.03.13-3.el8.x86_64.rpm"
)
AWS_2=(
  "https://download.docker.com/linux/centos/7/x86_64/stable/Packages/containerd.io-1.2.0-3.el7.x86_64.rpm"
  "https://download.docker.com/linux/centos/7/x86_64/stable/Packages/docker-ce-18.09.0-3.el7.x86_64.rpm"
  "https://download.docker.com/linux/centos/7/x86_64/stable/Packages/docker-ce-cli-18.09.0-3.el7.x86_64.rpm"
  "http://mirror.centos.org/centos/7/extras/x86_64/Packages/container-selinux-2.107-3.el7.noarch.rpm"
  "http://mirror.centos.org/altarch/7/os/aarch64/Packages/selinux-policy-3.13.1-268.el7.noarch.rpm"
  "http://mirror.centos.org/altarch/7/os/aarch64/Packages/selinux-policy-targeted-3.13.1-268.el7.noarch.rpm"
  "http://mirror.centos.org/centos/7/os/x86_64/Packages/policycoreutils-2.5-34.el7.x86_64.rpm"
  "http://mirror.centos.org/centos/7/os/x86_64/Packages/libsepol-2.5-10.el7.x86_64.rpm"
  "http://mirror.centos.org/centos/7/os/x86_64/Packages/libsemanage-2.5-14.el7.x86_64.rpm"
  "http://mirror.centos.org/centos/7/os/x86_64/Packages/policycoreutils-python-2.5-34.el7.x86_64.rpm"
  "http://mirror.centos.org/centos/7/os/x86_64/Packages/libselinux-utils-2.5-15.el7.x86_64.rpm"
  "http://mirror.centos.org/centos/7/os/x86_64/Packages/libselinux-2.5-15.el7.x86_64.rpm"
  "http://mirror.centos.org/centos/7/os/x86_64/Packages/setools-libs-3.3.8-4.el7.x86_64.rpm"
  "http://mirror.centos.org/centos/7/os/x86_64/Packages/libselinux-python-2.5-15.el7.x86_64.rpm"
  "http://mirror.centos.org/centos/7/os/x86_64/Packages/libsemanage-python-2.5-14.el7.x86_64.rpm"
)
FEDORA_31=(
  "https://download.docker.com/linux/fedora/31/x86_64/stable/Packages/containerd.io-1.2.10-3.2.fc31.x86_64.rpm"
  "https://download.docker.com/linux/fedora/31/x86_64/stable/Packages/docker-ce-19.03.0-3.fc31.x86_64.rpm"
  "https://download.docker.com/linux/fedora/31/x86_64/stable/Packages/docker-ce-cli-19.03.0-3.fc31.x86_64.rpm"
)
FEDORA_32=(
  "https://download.docker.com/linux/fedora/32/x86_64/stable/Packages/containerd.io-1.3.7-3.1.fc32.x86_64.rpm"
  "https://download.docker.com/linux/fedora/32/x86_64/stable/Packages/docker-ce-19.03.13-3.fc32.x86_64.rpm"
  "https://download.docker.com/linux/fedora/32/x86_64/stable/Packages/docker-ce-cli-19.03.13-3.fc32.x86_64.rpm"
)
FEDORA_33=(
  "https://download.docker.com/linux/fedora/33/x86_64/stable/Packages/containerd.io-1.3.7-3.1.fc33.x86_64.rpm"
  "https://download.docker.com/linux/fedora/33/x86_64/stable/Packages/docker-ce-20.10.0-3.fc33.x86_64.rpm"
  "https://download.docker.com/linux/fedora/33/x86_64/stable/Packages/docker-ce-cli-20.10.0-3.fc33.x86_64.rpm"
  "https://download.docker.com/linux/fedora/33/x86_64/stable/Packages/docker-ce-rootless-extras-20.10.0-3.fc33.x86_64.rpm"
)
FEDORA_33_HIGH=(
  "https://download.docker.com/linux/fedora/33/x86_64/stable/Packages/containerd.io-1.4.4-3.1.fc33.x86_64.rpm"
  "https://download.docker.com/linux/fedora/33/x86_64/stable/Packages/docker-ce-20.10.5-3.fc33.x86_64.rpm"
  "https://download.docker.com/linux/fedora/33/x86_64/stable/Packages/docker-ce-cli-20.10.5-3.fc33.x86_64.rpm"
  "https://download.docker.com/linux/fedora/33/x86_64/stable/Packages/docker-ce-rootless-extras-20.10.5-3.fc33.x86_64.rpm"
)
RHEL_7=(
  "https://download.docker.com/linux/centos/7/x86_64/stable/Packages/containerd.io-1.2.0-3.el7.x86_64.rpm"
  "https://download.docker.com/linux/centos/7/x86_64/stable/Packages/docker-ce-18.09.0-3.el7.x86_64.rpm"
  "https://download.docker.com/linux/centos/7/x86_64/stable/Packages/docker-ce-cli-18.09.0-3.el7.x86_64.rpm"
  "http://mirror.centos.org/centos/7/extras/x86_64/Packages/container-selinux-2.107-3.el7.noarch.rpm"
)
RHEL_8=(
  "https://download.docker.com/linux/centos/8/x86_64/stable/Packages/containerd.io-1.3.7-3.1.el8.x86_64.rpm"
  "https://download.docker.com/linux/centos/8/x86_64/stable/Packages/docker-ce-19.03.13-3.el8.x86_64.rpm"
  "https://download.docker.com/linux/centos/8/x86_64/stable/Packages/docker-ce-cli-19.03.13-3.el8.x86_64.rpm"
)
ORACLE_7=(
  "https://download.docker.com/linux/centos/7/x86_64/stable/Packages/containerd.io-1.2.0-3.el7.x86_64.rpm"
  "https://download.docker.com/linux/centos/7/x86_64/stable/Packages/docker-ce-18.09.0-3.el7.x86_64.rpm"
  "https://download.docker.com/linux/centos/7/x86_64/stable/Packages/docker-ce-cli-18.09.0-3.el7.x86_64.rpm"
  "http://mirror.centos.org/centos/7/extras/x86_64/Packages/container-selinux-2.107-3.el7.noarch.rpm"
)
ORACLE_8=(
  "https://download.docker.com/linux/centos/8/x86_64/stable/Packages/containerd.io-1.3.7-3.1.el8.x86_64.rpm"
  "https://download.docker.com/linux/centos/8/x86_64/stable/Packages/docker-ce-19.03.13-3.el8.x86_64.rpm"
  "https://download.docker.com/linux/centos/8/x86_64/stable/Packages/docker-ce-cli-19.03.13-3.el8.x86_64.rpm"
)

function run_rpm() {
  # Install old bad stuff
  install_packages_rpm "$@"
  smoke_docker
  install_hydra_rpm
  smoke_hydra
  # Install new hotness
  install_alation_docker_rpm
  smoke_docker
  smoke_hydra
  # Explode the new hotness
  rpm -e --nodeps alation_docker
  install_packages_rpm "$@"
  smoke_docker
  smoke_hydra
}

function run_fedora() {
  install_alation_docker_rpm
  smoke_docker
  install_hydra_rpm
  smoke_hydra
}

function install_alation_docker_rpm() {
  yum install -y ./alation_docker.rpm
}

function install_packages_rpm() {
  which iptables || yum install -y iptables
  tempdir="$(mktemp -d)"
  (
    cd "$tempdir"
    for rpm in "$@"
    do
      curl -O "$rpm"
    done
    yum install -y ./*.rpm
  )
  rm -rf "$tempdir"
}

function smoke_docker() {
  sleep 10
  systemctl start docker || sleep 60 && systemctl start docker
  docker info
  docker run --rm alpine
}

function install_hydra_rpm() {
  tempdir="$(mktemp -d)"
	(
		cd "$tempdir"
		curl -O 'https://artifactory.alationdevops.com/artifactory/alation_connector_manager/Alation/alation_connector_manager/master/1/0/2/132563/hydra-1.0.2.132563.rpm'
		rpm -Uvh --nodeps hydra-1.0.2.132563.rpm
	)
  rm -rf "$tempdir"
	truncate --size 0 /etc/hydra/hydra.toml || echo "No config file for Hydra yet"
	cat >> /etc/hydra/hydra.toml <<- EOF
		[agent]
		address = "localhost:1234"

		[security]
		issuance_secret = "asdasdA*(Sdyu98adh 93y0A(8syd98sy"

		[certificate_authority]
    address = "localhost:5678"
	EOF
}

function install_hydra_deb() {
	(
		cd "$(mktemp -d)"
		curl -O https://artifactory.alationdevops.com/artifactory/alation_connector_manager/Alation/alation_connector_manager/master/1/0/2/132563/hydra-1.0.2.132563.deb
		apt install hydra-1.0.2.132563.rpm
	)
	cat >> /etc/hydra/hydra.toml <<- EOF
		[agent]
		address = "localhost:1234"

		[security]
		issuance_secret = "asdasdA*(Sdyu98adh 93y0A(8syd98sy"

		[certificate_authority]
    address = "localhost:5678"
	EOF
}


function smoke_hydra() {
  systemctl start hydra
	docker ps | grep agent
	docker ps | grep ca
	systemctl stop hydra
}

OS=$(cat /etc/os-release)

case $OS in
  *"Red Hat Enterprise Linux 8"*)
    # Done
    run_rpm "${RHEL_8[@]}"
    ;;
  *"Red Hat Enterprise Linux Server 7"*)
    # Done
    run_rpm "${RHEL_7[@]}"
    ;;
  *"Fedora 33"*)
    # Fedora is blocked because offical packages
    # are broken...but mine works
    #
    # Done
    run_fedora
    ;;
  *"Fedora 32"*)
    # Done
    run_fedora
    ;;
  *"Fedora 31"*)
    # Done
    run_fedora
    ;;
  *"Oracle Linux Server 8"*)
    # Done
    run_rpm "${ORACLE_8[@]}"
    ;;
  *"Oracle Linux Server 7"*)
    # @TODO this base box is broken
    # it has almost no disk space on it
    # and I can't load more than a 100MB
    # or so onto it
    #
    # Dunno why, but this box
    # has almost disk space on it.
    # So just delete all of the
    # /opt/alation stuff that
    # we're not using.
    rm -rf /opt/* || :
    run_rpm "${ORACLE_7[@]}"
    ;;
  *"CentOS Linux 8"*)
    # Done
    run_rpm "${CENTOS_8[@]}"
    ;;
  *"CentOS Linux 7"*)
    # Done
    run_rpm "${CENTOS_7[@]}"
    ;;
  *"Amazon Linux 2"*)
    # Done
    run_rpm "${AWS_2[@]}"
    ;;
esac
