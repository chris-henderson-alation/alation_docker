#!/usr/bin/env bash

yum install -y rpm-build systemd-rpm-macros
mkdir -p /root/rpmbuild/BUILDROOT/alation_docker-1.0-1.x86_64/
cp -R /opt/rhel/* /root/rpmbuild
cp -R /opt/target/filesystem/* /root/rpmbuild/BUILDROOT/alation_docker-1.0-1.x86_64/
rpmbuild -ba --noclean /root/rpmbuild/SPECS/docker.spec --define 'version 1.0'
mv /root/rpmbuild/RPMS/x86_64/alation_docker-1.0-1.x86_64.rpm /opt/target/alation_docker.rpm
