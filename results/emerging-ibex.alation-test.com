Hit:1 http://us-east-1.ec2.archive.ubuntu.com/ubuntu bionic InRelease
Get:2 http://us-east-1.ec2.archive.ubuntu.com/ubuntu bionic-updates InRelease [88.7 kB]
Get:3 http://us-east-1.ec2.archive.ubuntu.com/ubuntu bionic-backports InRelease [74.6 kB]
Get:4 http://us-east-1.ec2.archive.ubuntu.com/ubuntu bionic/universe amd64 Packages [8570 kB]
Get:5 http://security.ubuntu.com/ubuntu bionic-security InRelease [88.7 kB]
Get:6 http://us-east-1.ec2.archive.ubuntu.com/ubuntu bionic/universe Translation-en [4941 kB]
Get:7 http://security.ubuntu.com/ubuntu bionic-security/main amd64 Packages [1639 kB]
Get:8 http://us-east-1.ec2.archive.ubuntu.com/ubuntu bionic/multiverse amd64 Packages [151 kB]
Get:9 http://us-east-1.ec2.archive.ubuntu.com/ubuntu bionic/multiverse Translation-en [108 kB]
Get:10 http://us-east-1.ec2.archive.ubuntu.com/ubuntu bionic-updates/main amd64 Packages [1979 kB]
Get:11 http://us-east-1.ec2.archive.ubuntu.com/ubuntu bionic-updates/main Translation-en [402 kB]
Get:12 http://us-east-1.ec2.archive.ubuntu.com/ubuntu bionic-updates/universe amd64 Packages [1727 kB]
Get:13 http://us-east-1.ec2.archive.ubuntu.com/ubuntu bionic-updates/universe Translation-en [366 kB]
Get:14 http://us-east-1.ec2.archive.ubuntu.com/ubuntu bionic-updates/multiverse amd64 Packages [24.9 kB]
Get:15 http://us-east-1.ec2.archive.ubuntu.com/ubuntu bionic-updates/multiverse Translation-en [6464 B]
Get:16 http://us-east-1.ec2.archive.ubuntu.com/ubuntu bionic-backports/main amd64 Packages [10.0 kB]
Get:17 http://us-east-1.ec2.archive.ubuntu.com/ubuntu bionic-backports/main Translation-en [4764 B]
Get:18 http://us-east-1.ec2.archive.ubuntu.com/ubuntu bionic-backports/universe amd64 Packages [10.3 kB]
Get:19 http://us-east-1.ec2.archive.ubuntu.com/ubuntu bionic-backports/universe Translation-en [4588 B]
Get:20 http://security.ubuntu.com/ubuntu bionic-security/main Translation-en [310 kB]
Get:21 http://security.ubuntu.com/ubuntu bionic-security/universe amd64 Packages [1118 kB]
Get:22 http://security.ubuntu.com/ubuntu bionic-security/universe Translation-en [251 kB]
Get:23 http://security.ubuntu.com/ubuntu bionic-security/multiverse amd64 Packages [19.1 kB]
Get:24 http://security.ubuntu.com/ubuntu bionic-security/multiverse Translation-en [4412 B]
Fetched 21.9 MB in 4s (5097 kB/s)
Reading package lists...
Building dependency tree...
Reading state information...
8 packages can be upgraded. Run 'apt list --upgradable' to see them.
Reading package lists...
Building dependency tree...
Reading state information...
The following additional packages will be installed:
  bridge-utils cgroupfs-mount containerd docker.io pigz runc ubuntu-fan
Suggested packages:
  ifupdown aufs-tools debootstrap docker-doc rinse zfs-fuse | zfsutils
The following NEW packages will be installed:
  alation-hydra bridge-utils cgroupfs-mount containerd docker.io pigz runc
  ubuntu-fan
0 upgraded, 8 newly installed, 0 to remove and 8 not upgraded.
Need to get 63.8 MB/84.9 MB of archives.
After this operation, 320 MB of additional disk space will be used.
Get:1 http://us-east-1.ec2.archive.ubuntu.com/ubuntu bionic/universe amd64 pigz amd64 2.4-1 [57.4 kB]
Get:2 http://us-east-1.ec2.archive.ubuntu.com/ubuntu bionic-updates/universe amd64 runc amd64 1.0.0~rc10-0ubuntu1~18.04.2 [2000 kB]
Get:3 http://us-east-1.ec2.archive.ubuntu.com/ubuntu bionic-updates/universe amd64 containerd amd64 1.3.3-0ubuntu1~18.04.4 [21.7 MB]
Get:4 /tmp/tmp.YgZmm6j1cg/hydra-1.0.2.132563.deb alation-hydra amd64 1.0.2.132563 [21.1 MB]
Get:5 http://us-east-1.ec2.archive.ubuntu.com/ubuntu bionic-updates/universe amd64 docker.io amd64 19.03.6-0ubuntu1~18.04.3 [39.9 MB]
Get:6 http://us-east-1.ec2.archive.ubuntu.com/ubuntu bionic/main amd64 bridge-utils amd64 1.5-15ubuntu1 [30.1 kB]
Get:7 http://us-east-1.ec2.archive.ubuntu.com/ubuntu bionic/universe amd64 cgroupfs-mount all 1.4 [6320 B]
Get:8 http://us-east-1.ec2.archive.ubuntu.com/ubuntu bionic/main amd64 ubuntu-fan all 0.12.10 [34.7 kB]
Fetched 63.8 MB in 2s (31.8 MB/s)
Selecting previously unselected package pigz.
(Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 71903 files and directories currently installed.)
Preparing to unpack .../0-pigz_2.4-1_amd64.deb ...
Unpacking pigz (2.4-1) ...
Selecting previously unselected package runc.
Preparing to unpack .../1-runc_1.0.0~rc10-0ubuntu1~18.04.2_amd64.deb ...
Unpacking runc (1.0.0~rc10-0ubuntu1~18.04.2) ...
Selecting previously unselected package containerd.
Preparing to unpack .../2-containerd_1.3.3-0ubuntu1~18.04.4_amd64.deb ...
Unpacking containerd (1.3.3-0ubuntu1~18.04.4) ...
Selecting previously unselected package docker.io.
Preparing to unpack .../3-docker.io_19.03.6-0ubuntu1~18.04.3_amd64.deb ...
Unpacking docker.io (19.03.6-0ubuntu1~18.04.3) ...
Selecting previously unselected package alation-hydra.
Preparing to unpack .../4-hydra-1.0.2.132563.deb ...
Unpacking alation-hydra (1.0.2.132563) ...
Selecting previously unselected package bridge-utils.
Preparing to unpack .../5-bridge-utils_1.5-15ubuntu1_amd64.deb ...
Unpacking bridge-utils (1.5-15ubuntu1) ...
Selecting previously unselected package cgroupfs-mount.
Preparing to unpack .../6-cgroupfs-mount_1.4_all.deb ...
Unpacking cgroupfs-mount (1.4) ...
Selecting previously unselected package ubuntu-fan.
Preparing to unpack .../7-ubuntu-fan_0.12.10_all.deb ...
Unpacking ubuntu-fan (0.12.10) ...
Setting up runc (1.0.0~rc10-0ubuntu1~18.04.2) ...
Setting up cgroupfs-mount (1.4) ...
Setting up containerd (1.3.3-0ubuntu1~18.04.4) ...
Created symlink /etc/systemd/system/multi-user.target.wants/containerd.service → /lib/systemd/system/containerd.service.
Setting up bridge-utils (1.5-15ubuntu1) ...
debconf: unable to initialize frontend: Dialog
debconf: (Dialog frontend will not work on a dumb terminal, an emacs shell buffer, or without a controlling terminal.)
debconf: falling back to frontend: Readline
Setting up ubuntu-fan (0.12.10) ...
Created symlink /etc/systemd/system/multi-user.target.wants/ubuntu-fan.service → /lib/systemd/system/ubuntu-fan.service.
Setting up pigz (2.4-1) ...
Setting up docker.io (19.03.6-0ubuntu1~18.04.3) ...
debconf: unable to initialize frontend: Dialog
debconf: (Dialog frontend will not work on a dumb terminal, an emacs shell buffer, or without a controlling terminal.)
debconf: falling back to frontend: Readline
Adding group `docker' (GID 115) ...
Done.
Created symlink /etc/systemd/system/sockets.target.wants/docker.socket → /lib/systemd/system/docker.socket.
docker.service is a disabled or a static unit, not starting it.
Setting up alation-hydra (1.0.2.132563) ...
Created symlink /etc/systemd/system/multi-user.target.wants/docker.service → /lib/systemd/system/docker.service.
Created symlink /etc/systemd/system/multi-user.target.wants/hydra.service → /usr/lib/systemd/system/hydra.service.
Processing triggers for man-db (2.8.3-2ubuntu0.1) ...
Processing triggers for ureadahead (0.100.0-21) ...
Processing triggers for systemd (237-3ubuntu10.45) ...
Client:
 Debug Mode: false

Server:
 Containers: 0
  Running: 0
  Paused: 0
  Stopped: 0
 Images: 0
 Server Version: 19.03.6
 Storage Driver: overlay2
  Backing Filesystem: extfs
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
 Kernel Version: 5.4.0-1041-aws
 Operating System: Ubuntu 18.04.5 LTS
 OSType: linux
 Architecture: x86_64
 CPUs: 2
 Total Memory: 14.9GiB
 Name: ip-10-13-95-163
 ID: P2XX:CDE3:BEHE:PZOI:RTQX:LRVR:LYMG:HW2B:7F4N:XL3A:HMRY:ZGVW
 Docker Root Dir: /var/lib/docker
 Debug Mode: false
 Registry: https://index.docker.io/v1/
 Labels:
 Experimental: false
 Insecure Registries:
  127.0.0.0/8
 Live Restore Enabled: false

d789c8ba003c        agent               "agent"             Less than a second ago   Up Less than a second                       agent
e706b7c32d87        ca                  "ca"                2 seconds ago            Up 1 second                                 ca
Reading package lists...
Building dependency tree...
Reading state information...
The following packages were automatically installed and are no longer required:
  bridge-utils cgroupfs-mount pigz runc ubuntu-fan
Use 'sudo apt autoremove' to remove them.
The following packages will be REMOVED:
  containerd docker.io
The following NEW packages will be installed:
  alation-containerizer
0 upgraded, 1 newly installed, 2 to remove and 8 not upgraded.
Need to get 0 B/64.3 MB of archives.
After this operation, 310 MB disk space will be freed.
Get:1 /home/ssh-user/alation-containerizer_1.0.0_amd64.deb alation-containerizer amd64 1.0.0 [64.3 MB]
dpkg: docker.io: dependency problems, but removing anyway as you requested:
 alation-hydra depends on docker.io (>= 18.09.1) | docker-ce (>= 18.09.1); however:
  Package docker.io is to be removed.
  Package docker-ce is not installed.

(Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 72372 files and directories currently installed.)
Removing docker.io (19.03.6-0ubuntu1~18.04.3) ...
'/usr/share/docker.io/contrib/nuke-graph-directory.sh' -> '/var/lib/docker/nuke-graph-directory.sh'
Removing containerd (1.3.3-0ubuntu1~18.04.4) ...
Selecting previously unselected package alation-containerizer.
(Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 72139 files and directories currently installed.)
Preparing to unpack .../alation-containerizer_1.0.0_amd64.deb ...
Unpacking alation-containerizer (1.0.0) ...
Setting up alation-containerizer (1.0.0) ...
Unit docker.service does not exist, proceeding anyway.
Removed /etc/systemd/system/docker.socket.
Removed /etc/systemd/system/containerd.service.
Processing triggers for man-db (2.8.3-2ubuntu0.1) ...
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
 Kernel Version: 5.4.0-1041-aws
 Operating System: Ubuntu 18.04.5 LTS
 OSType: linux
 Architecture: x86_64
 CPUs: 2
 Total Memory: 14.9GiB
 Name: ip-10-13-95-163
 ID: P2XX:CDE3:BEHE:PZOI:RTQX:LRVR:LYMG:HW2B:7F4N:XL3A:HMRY:ZGVW
 Docker Root Dir: /var/lib/docker
 Debug Mode: false
 Registry: https://index.docker.io/v1/
 Labels:
 Experimental: false
 Insecure Registries:
  127.0.0.0/8
 Live Restore Enabled: false
 Product License: Community Engine

d789c8ba003c   agent     "agent"   31 seconds ago   Up Less than a second             agent
e706b7c32d87   ca        "ca"      33 seconds ago   Up Less than a second             ca
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
0 upgraded, 2 newly installed, 1 to remove and 8 not upgraded.
Need to get 61.7 MB of archives.
After this operation, 310 MB of additional disk space will be used.
Get:1 http://us-east-1.ec2.archive.ubuntu.com/ubuntu bionic-updates/universe amd64 docker.io amd64 19.03.6-0ubuntu1~18.04.3 [39.9 MB]
Get:2 http://us-east-1.ec2.archive.ubuntu.com/ubuntu bionic-updates/universe amd64 containerd amd64 1.3.3-0ubuntu1~18.04.4 [21.7 MB]
Fetched 61.7 MB in 2s (33.3 MB/s)
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

(Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 72158 files and directories currently installed.)
Removing alation-containerizer (1.0.0) ...
Selecting previously unselected package docker.io.
(Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 72139 files and directories currently installed.)
Preparing to unpack .../docker.io_19.03.6-0ubuntu1~18.04.3_amd64.deb ...
Unpacking docker.io (19.03.6-0ubuntu1~18.04.3) ...
Selecting previously unselected package containerd.
Preparing to unpack .../containerd_1.3.3-0ubuntu1~18.04.4_amd64.deb ...
Unpacking containerd (1.3.3-0ubuntu1~18.04.4) ...
Setting up containerd (1.3.3-0ubuntu1~18.04.4) ...
Setting up docker.io (19.03.6-0ubuntu1~18.04.3) ...
debconf: unable to initialize frontend: Dialog
debconf: (Dialog frontend will not work on a dumb terminal, an emacs shell buffer, or without a controlling terminal.)
debconf: falling back to frontend: Readline
Processing triggers for man-db (2.8.3-2ubuntu0.1) ...
Client:
 Debug Mode: false

Server:
 Containers: 2
  Running: 0
  Paused: 0
  Stopped: 2
 Images: 3
 Server Version: 19.03.6
 Storage Driver: overlay2
  Backing Filesystem: extfs
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
 Kernel Version: 5.4.0-1041-aws
 Operating System: Ubuntu 18.04.5 LTS
 OSType: linux
 Architecture: x86_64
 CPUs: 2
 Total Memory: 14.9GiB
 Name: ip-10-13-95-163
 ID: P2XX:CDE3:BEHE:PZOI:RTQX:LRVR:LYMG:HW2B:7F4N:XL3A:HMRY:ZGVW
 Docker Root Dir: /var/lib/docker
 Debug Mode: false
 Registry: https://index.docker.io/v1/
 Labels:
 Experimental: false
 Insecure Registries:
  127.0.0.0/8
 Live Restore Enabled: false

d789c8ba003c        agent               "agent"             About a minute ago   Up Less than a second                       agent
e706b7c32d87        ca                  "ca"                About a minute ago   Up Less than a second                       ca
SUCCESS
