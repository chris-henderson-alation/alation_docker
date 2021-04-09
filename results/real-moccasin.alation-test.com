Hit:1 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal InRelease
Get:2 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-updates InRelease [114 kB]
Get:3 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-backports InRelease [101 kB]
Get:4 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal/universe amd64 Packages [8628 kB]
Get:5 http://security.ubuntu.com/ubuntu focal-security InRelease [109 kB]
Get:6 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal/universe Translation-en [5124 kB]
Get:7 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal/universe amd64 c-n-f Metadata [265 kB]
Get:8 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal/multiverse amd64 Packages [144 kB]
Get:9 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal/multiverse Translation-en [104 kB]
Get:10 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal/multiverse amd64 c-n-f Metadata [9136 B]
Get:11 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-updates/main amd64 Packages [896 kB]
Get:12 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-updates/main Translation-en [209 kB]
Get:13 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-updates/main amd64 c-n-f Metadata [13.0 kB]
Get:14 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-updates/restricted amd64 Packages [171 kB]
Get:15 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-updates/restricted Translation-en [25.3 kB]
Get:16 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-updates/restricted amd64 c-n-f Metadata [436 B]
Get:17 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-updates/universe amd64 Packages [758 kB]
Get:18 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-updates/universe Translation-en [161 kB]
Get:19 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-updates/universe amd64 c-n-f Metadata [16.6 kB]
Get:20 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-updates/multiverse amd64 Packages [21.6 kB]
Get:21 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-updates/multiverse Translation-en [5508 B]
Get:22 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-updates/multiverse amd64 c-n-f Metadata [596 B]
Get:23 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-backports/main amd64 c-n-f Metadata [112 B]
Get:24 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-backports/restricted amd64 c-n-f Metadata [116 B]
Get:25 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-backports/universe amd64 Packages [4032 B]
Get:26 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-backports/universe Translation-en [1448 B]
Get:27 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-backports/universe amd64 c-n-f Metadata [224 B]
Get:28 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-backports/multiverse amd64 c-n-f Metadata [116 B]
Get:29 http://security.ubuntu.com/ubuntu focal-security/main amd64 Packages [575 kB]
Get:30 http://security.ubuntu.com/ubuntu focal-security/main Translation-en [120 kB]
Get:31 http://security.ubuntu.com/ubuntu focal-security/main amd64 c-n-f Metadata [7436 B]
Get:32 http://security.ubuntu.com/ubuntu focal-security/restricted amd64 Packages [148 kB]
Get:33 http://security.ubuntu.com/ubuntu focal-security/restricted Translation-en [21.6 kB]
Get:34 http://security.ubuntu.com/ubuntu focal-security/restricted amd64 c-n-f Metadata [392 B]
Get:35 http://security.ubuntu.com/ubuntu focal-security/universe amd64 Packages [551 kB]
Get:36 http://security.ubuntu.com/ubuntu focal-security/universe Translation-en [81.4 kB]
Get:37 http://security.ubuntu.com/ubuntu focal-security/universe amd64 c-n-f Metadata [10.7 kB]
Get:38 http://security.ubuntu.com/ubuntu focal-security/multiverse amd64 Packages [14.8 kB]
Get:39 http://security.ubuntu.com/ubuntu focal-security/multiverse Translation-en [3160 B]
Get:40 http://security.ubuntu.com/ubuntu focal-security/multiverse amd64 c-n-f Metadata [340 B]
Fetched 18.4 MB in 3s (6074 kB/s)
Reading package lists...
Building dependency tree...
Reading state information...
80 packages can be upgraded. Run 'apt list --upgradable' to see them.
Reading package lists...
Building dependency tree...
Reading state information...
The following additional packages will be installed:
  bridge-utils cgroupfs-mount containerd dns-root-data dnsmasq-base docker.io
  libidn11 pigz runc ubuntu-fan
Suggested packages:
  ifupdown aufs-tools debootstrap docker-doc rinse zfs-fuse | zfsutils
The following NEW packages will be installed:
  alation-hydra bridge-utils cgroupfs-mount containerd dns-root-data
  dnsmasq-base docker.io libidn11 pigz runc ubuntu-fan
0 upgraded, 11 newly installed, 0 to remove and 80 not upgraded.
Need to get 69.7 MB/90.8 MB of archives.
After this operation, 334 MB of additional disk space will be used.
Get:1 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal/universe amd64 pigz amd64 2.4-1 [57.4 kB]
Get:2 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal/main amd64 runc amd64 1.0.0~rc10-0ubuntu1 [2549 kB]
Get:3 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-updates/main amd64 containerd amd64 1.3.3-0ubuntu2.3 [27.8 MB]
Get:4 /tmp/tmp.DS9KVkF2m0/hydra-1.0.2.132563.deb alation-hydra amd64 1.0.2.132563 [21.1 MB]
Get:5 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-updates/universe amd64 docker.io amd64 19.03.8-0ubuntu1.20.04.2 [38.9 MB]
Get:6 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal/main amd64 bridge-utils amd64 1.6-2ubuntu1 [30.5 kB]
Get:7 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal/universe amd64 cgroupfs-mount all 1.4 [6320 B]
Get:8 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal/main amd64 dns-root-data all 2019052802 [5300 B]
Get:9 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal/main amd64 libidn11 amd64 1.33-2.2ubuntu2 [46.2 kB]
Get:10 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-updates/main amd64 dnsmasq-base amd64 2.80-1.1ubuntu1.3 [314 kB]
Get:11 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal/main amd64 ubuntu-fan all 0.12.13 [34.5 kB]
Fetched 69.7 MB in 1s (46.5 MB/s)
Selecting previously unselected package pigz.
(Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 74879 files and directories currently installed.)
Preparing to unpack .../00-pigz_2.4-1_amd64.deb ...
Unpacking pigz (2.4-1) ...
Selecting previously unselected package runc.
Preparing to unpack .../01-runc_1.0.0~rc10-0ubuntu1_amd64.deb ...
Unpacking runc (1.0.0~rc10-0ubuntu1) ...
Selecting previously unselected package containerd.
Preparing to unpack .../02-containerd_1.3.3-0ubuntu2.3_amd64.deb ...
Unpacking containerd (1.3.3-0ubuntu2.3) ...
Selecting previously unselected package docker.io.
Preparing to unpack .../03-docker.io_19.03.8-0ubuntu1.20.04.2_amd64.deb ...
Unpacking docker.io (19.03.8-0ubuntu1.20.04.2) ...
Selecting previously unselected package alation-hydra.
Preparing to unpack .../04-hydra-1.0.2.132563.deb ...
Unpacking alation-hydra (1.0.2.132563) ...
Selecting previously unselected package bridge-utils.
Preparing to unpack .../05-bridge-utils_1.6-2ubuntu1_amd64.deb ...
Unpacking bridge-utils (1.6-2ubuntu1) ...
Selecting previously unselected package cgroupfs-mount.
Preparing to unpack .../06-cgroupfs-mount_1.4_all.deb ...
Unpacking cgroupfs-mount (1.4) ...
Selecting previously unselected package dns-root-data.
Preparing to unpack .../07-dns-root-data_2019052802_all.deb ...
Unpacking dns-root-data (2019052802) ...
Selecting previously unselected package libidn11:amd64.
Preparing to unpack .../08-libidn11_1.33-2.2ubuntu2_amd64.deb ...
Unpacking libidn11:amd64 (1.33-2.2ubuntu2) ...
Selecting previously unselected package dnsmasq-base.
Preparing to unpack .../09-dnsmasq-base_2.80-1.1ubuntu1.3_amd64.deb ...
Unpacking dnsmasq-base (2.80-1.1ubuntu1.3) ...
Selecting previously unselected package ubuntu-fan.
Preparing to unpack .../10-ubuntu-fan_0.12.13_all.deb ...
Unpacking ubuntu-fan (0.12.13) ...
Setting up runc (1.0.0~rc10-0ubuntu1) ...
Setting up dns-root-data (2019052802) ...
Setting up libidn11:amd64 (1.33-2.2ubuntu2) ...
Setting up bridge-utils (1.6-2ubuntu1) ...
debconf: unable to initialize frontend: Dialog
debconf: (Dialog frontend will not work on a dumb terminal, an emacs shell buffer, or without a controlling terminal.)
debconf: falling back to frontend: Readline
Setting up pigz (2.4-1) ...
Setting up cgroupfs-mount (1.4) ...
Setting up containerd (1.3.3-0ubuntu2.3) ...
Created symlink /etc/systemd/system/multi-user.target.wants/containerd.service → /lib/systemd/system/containerd.service.
Setting up docker.io (19.03.8-0ubuntu1.20.04.2) ...
debconf: unable to initialize frontend: Dialog
debconf: (Dialog frontend will not work on a dumb terminal, an emacs shell buffer, or without a controlling terminal.)
debconf: falling back to frontend: Readline
Adding group `docker' (GID 119) ...
Done.
Created symlink /etc/systemd/system/sockets.target.wants/docker.socket → /lib/systemd/system/docker.socket.
docker.service is a disabled or a static unit, not starting it.
Setting up dnsmasq-base (2.80-1.1ubuntu1.3) ...
Setting up alation-hydra (1.0.2.132563) ...
Created symlink /etc/systemd/system/multi-user.target.wants/docker.service → /lib/systemd/system/docker.service.
Created symlink /etc/systemd/system/multi-user.target.wants/hydra.service → /lib/systemd/system/hydra.service.
Setting up ubuntu-fan (0.12.13) ...
Created symlink /etc/systemd/system/multi-user.target.wants/ubuntu-fan.service → /lib/systemd/system/ubuntu-fan.service.
Processing triggers for systemd (245.4-4ubuntu3.4) ...
Processing triggers for man-db (2.9.1-1) ...
Processing triggers for dbus (1.12.16-2ubuntu2.1) ...
Processing triggers for libc-bin (2.31-0ubuntu9.2) ...
Client:
 Debug Mode: false

Server:
 Containers: 0
  Running: 0
  Paused: 0
  Stopped: 0
 Images: 0
 Server Version: 19.03.8
 Storage Driver: overlay2
  Backing Filesystem: <unknown>
  Supports d_type: true
  Native Overlay Diff: true
 Logging Driver: json-file
 Cgroup Driver: cgroupfs
 Plugins:
  Volume: local
  Network: bridge host ipvlan macvlan null overlay
  Log: awslogs fluentd gcplogs gelf journald json-file local logentries splunk syslog
 Swarm: inactive
 Runtimes: runc
 Default Runtime: runc
 Init Binary: docker-init
 containerd version: 
 runc version: 
 init version: 
 Security Options:
  apparmor
  seccomp
   Profile: default
 Kernel Version: 5.4.0-1037-aws
 Operating System: Ubuntu 20.04.2 LTS
 OSType: linux
 Architecture: x86_64
 CPUs: 2
 Total Memory: 14.9GiB
 Name: ip-10-13-93-170
 ID: Q23C:763I:47AO:2EXP:N2TU:WOJW:RQDQ:PUEM:GXVB:WARC:QSDH:AYJE
 Docker Root Dir: /var/lib/docker
 Debug Mode: false
 Registry: https://index.docker.io/v1/
 Labels:
 Experimental: false
 Insecure Registries:
  127.0.0.0/8
 Live Restore Enabled: false

3d4f05191001        agent               "agent"             1 second ago        Up Less than a second                       agent
e83c91866794        ca                  "ca"                2 seconds ago       Up 1 second                                 ca
Reading package lists...
Building dependency tree...
Reading state information...
The following packages were automatically installed and are no longer required:
  bridge-utils cgroupfs-mount dns-root-data dnsmasq-base libidn11 pigz runc
  ubuntu-fan
Use 'sudo apt autoremove' to remove them.
The following packages will be REMOVED:
  containerd docker.io
The following NEW packages will be installed:
  alation-containerizer
0 upgraded, 1 newly installed, 2 to remove and 80 not upgraded.
Need to get 0 B/64.3 MB of archives.
After this operation, 322 MB disk space will be freed.
Get:1 /home/ssh-user/alation-containerizer_1.0.0_amd64.deb alation-containerizer amd64 1.0.0 [64.3 MB]
dpkg: containerd: dependency problems, but removing anyway as you requested:
 docker.io depends on containerd (>= 1.2.6-0ubuntu1~).

(Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 75379 files and directories currently installed.)
Removing containerd (1.3.3-0ubuntu2.3) ...
dpkg: docker.io: dependency problems, but removing anyway as you requested:
 alation-hydra depends on docker.io (>= 18.09.1) | docker-ce (>= 18.09.1); however:
  Package docker.io is to be removed.
  Package docker-ce is not installed.

Removing docker.io (19.03.8-0ubuntu1.20.04.2) ...
'/usr/share/docker.io/contrib/nuke-graph-directory.sh' -> '/var/lib/docker/nuke-graph-directory.sh'
Selecting previously unselected package alation-containerizer.
(Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 75146 files and directories currently installed.)
Preparing to unpack .../alation-containerizer_1.0.0_amd64.deb ...
Unpacking alation-containerizer (1.0.0) ...
Setting up alation-containerizer (1.0.0) ...
Unit docker.service does not exist, proceeding anyway.
Removed /etc/systemd/system/docker.socket.
Removed /etc/systemd/system/containerd.service.
Processing triggers for man-db (2.9.1-1) ...
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
 runc version: 
 init version: de40ad0
 Security Options:
  apparmor
  seccomp
   Profile: default
 Kernel Version: 5.4.0-1037-aws
 Operating System: Ubuntu 20.04.2 LTS
 OSType: linux
 Architecture: x86_64
 CPUs: 2
 Total Memory: 14.9GiB
 Name: ip-10-13-93-170
 ID: Q23C:763I:47AO:2EXP:N2TU:WOJW:RQDQ:PUEM:GXVB:WARC:QSDH:AYJE
 Docker Root Dir: /var/lib/docker
 Debug Mode: false
 Registry: https://index.docker.io/v1/
 Labels:
 Experimental: false
 Insecure Registries:
  127.0.0.0/8
 Live Restore Enabled: false
 Product License: Community Engine

3d4f05191001   agent     "agent"   33 seconds ago   Up Less than a second             agent
e83c91866794   ca        "ca"      34 seconds ago   Up Less than a second             ca
Reading package lists...
Building dependency tree...
Reading state information...
The following additional packages will be installed:
  containerd
Suggested packages:
  aufs-tools debootstrap docker-doc rinse zfs-fuse | zfsutils
The following packages will be REMOVED:
  alation-containerizer
The following NEW packages will be installed:
  containerd docker.io
0 upgraded, 2 newly installed, 1 to remove and 80 not upgraded.
Need to get 66.7 MB of archives.
After this operation, 322 MB of additional disk space will be used.
Get:1 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-updates/universe amd64 docker.io amd64 19.03.8-0ubuntu1.20.04.2 [38.9 MB]
Get:2 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-updates/main amd64 containerd amd64 1.3.3-0ubuntu2.3 [27.8 MB]
Fetched 66.7 MB in 3s (21.9 MB/s)
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

(Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 75165 files and directories currently installed.)
Removing alation-containerizer (1.0.0) ...
Selecting previously unselected package docker.io.
(Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 75146 files and directories currently installed.)
Preparing to unpack .../docker.io_19.03.8-0ubuntu1.20.04.2_amd64.deb ...
Unpacking docker.io (19.03.8-0ubuntu1.20.04.2) ...
Selecting previously unselected package containerd.
Preparing to unpack .../containerd_1.3.3-0ubuntu2.3_amd64.deb ...
Unpacking containerd (1.3.3-0ubuntu2.3) ...
Setting up containerd (1.3.3-0ubuntu2.3) ...
Setting up docker.io (19.03.8-0ubuntu1.20.04.2) ...
debconf: unable to initialize frontend: Dialog
debconf: (Dialog frontend will not work on a dumb terminal, an emacs shell buffer, or without a controlling terminal.)
debconf: falling back to frontend: Readline
Processing triggers for man-db (2.9.1-1) ...
Client:
 Debug Mode: false

Server:
 Containers: 2
  Running: 0
  Paused: 0
  Stopped: 2
 Images: 3
 Server Version: 19.03.8
 Storage Driver: overlay2
  Backing Filesystem: <unknown>
  Supports d_type: true
  Native Overlay Diff: true
 Logging Driver: json-file
 Cgroup Driver: cgroupfs
 Plugins:
  Volume: local
  Network: bridge host ipvlan macvlan null overlay
  Log: awslogs fluentd gcplogs gelf journald json-file local logentries splunk syslog
 Swarm: inactive
 Runtimes: runc
 Default Runtime: runc
 Init Binary: docker-init
 containerd version: 
 runc version: 
 init version: 
 Security Options:
  apparmor
  seccomp
   Profile: default
 Kernel Version: 5.4.0-1037-aws
 Operating System: Ubuntu 20.04.2 LTS
 OSType: linux
 Architecture: x86_64
 CPUs: 2
 Total Memory: 14.9GiB
 Name: ip-10-13-93-170
 ID: Q23C:763I:47AO:2EXP:N2TU:WOJW:RQDQ:PUEM:GXVB:WARC:QSDH:AYJE
 Docker Root Dir: /var/lib/docker
 Debug Mode: false
 Registry: https://index.docker.io/v1/
 Labels:
 Experimental: false
 Insecure Registries:
  127.0.0.0/8
 Live Restore Enabled: false

3d4f05191001        agent               "agent"             About a minute ago   Up Less than a second                       agent
e83c91866794        ca                  "ca"                About a minute ago   Up Less than a second                       ca
SUCCESS
