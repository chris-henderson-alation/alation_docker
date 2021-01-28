#!/usr/bin/env bash

mkdir -p /root/buildroot
cp -R /opt/debian/docker /root/buildroot/
cp -R /opt/target/filesystem/* /root/buildroot/docker/
dpkg-deb --build /root/buildroot/docker /opt/target/alation_docker.deb
