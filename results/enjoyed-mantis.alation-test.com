Hit:1 http://us-east-1.ec2.archive.ubuntu.com/ubuntu xenial InRelease
Get:2 http://us-east-1.ec2.archive.ubuntu.com/ubuntu xenial-updates InRelease [109 kB]
Get:3 http://us-east-1.ec2.archive.ubuntu.com/ubuntu xenial-backports InRelease [107 kB]
Get:4 http://security.ubuntu.com/ubuntu xenial-security InRelease [109 kB]
Get:5 http://us-east-1.ec2.archive.ubuntu.com/ubuntu xenial/universe amd64 Packages [7,532 kB]
Get:6 http://us-east-1.ec2.archive.ubuntu.com/ubuntu xenial/universe Translation-en [4,354 kB]
Get:7 http://us-east-1.ec2.archive.ubuntu.com/ubuntu xenial/multiverse amd64 Packages [144 kB]
Get:8 http://us-east-1.ec2.archive.ubuntu.com/ubuntu xenial/multiverse Translation-en [106 kB]
Get:9 http://us-east-1.ec2.archive.ubuntu.com/ubuntu xenial-updates/main amd64 Packages [2,009 kB]
Get:10 http://us-east-1.ec2.archive.ubuntu.com/ubuntu xenial-updates/universe amd64 Packages [1,217 kB]
Get:11 http://us-east-1.ec2.archive.ubuntu.com/ubuntu xenial-updates/universe Translation-en [356 kB]
Get:12 http://us-east-1.ec2.archive.ubuntu.com/ubuntu xenial-updates/multiverse amd64 Packages [22.6 kB]
Get:13 http://us-east-1.ec2.archive.ubuntu.com/ubuntu xenial-updates/multiverse Translation-en [8,476 B]
Get:14 http://us-east-1.ec2.archive.ubuntu.com/ubuntu xenial-backports/main amd64 Packages [9,812 B]
Get:15 http://us-east-1.ec2.archive.ubuntu.com/ubuntu xenial-backports/main Translation-en [4,456 B]
Get:16 http://us-east-1.ec2.archive.ubuntu.com/ubuntu xenial-backports/universe amd64 Packages [11.3 kB]
Get:17 http://us-east-1.ec2.archive.ubuntu.com/ubuntu xenial-backports/universe Translation-en [4,476 B]
Get:18 http://security.ubuntu.com/ubuntu xenial-security/main amd64 Packages [1,607 kB]
Get:19 http://security.ubuntu.com/ubuntu xenial-security/universe amd64 Packages [786 kB]
Get:20 http://security.ubuntu.com/ubuntu xenial-security/universe Translation-en [225 kB]
Get:21 http://security.ubuntu.com/ubuntu xenial-security/multiverse amd64 Packages [7,864 B]
Get:22 http://security.ubuntu.com/ubuntu xenial-security/multiverse Translation-en [2,672 B]
Fetched 18.7 MB in 3s (5,527 kB/s)
Reading package lists...
Building dependency tree...
Reading state information...
2 packages can be upgraded. Run 'apt list --upgradable' to see them.
Reading package lists...
Building dependency tree...
Reading state information...
The following additional packages will be installed:
  bridge-utils cgroupfs-mount containerd docker.io pigz runc ubuntu-fan
Suggested packages:
  mountall aufs-tools debootstrap docker-doc rinse zfs-fuse | zfsutils
The following NEW packages will be installed:
  alation-hydra bridge-utils cgroupfs-mount containerd docker.io pigz runc
  ubuntu-fan
0 upgraded, 8 newly installed, 0 to remove and 2 not upgraded.
Need to get 52.4 MB/73.5 MB of archives.
After this operation, 257 MB of additional disk space will be used.
Get:1 http://us-east-1.ec2.archive.ubuntu.com/ubuntu xenial/universe amd64 pigz amd64 2.3.1-2 [61.1 kB]
Get:2 http://us-east-1.ec2.archive.ubuntu.com/ubuntu xenial-updates/universe amd64 runc amd64 1.0.0~rc7+git20190403.029124da-0ubuntu1~16.04.4 [1,890 kB]
Get:3 http://us-east-1.ec2.archive.ubuntu.com/ubuntu xenial-updates/universe amd64 containerd amd64 1.2.6-0ubuntu1~16.04.6 [19.9 MB]
Get:4 /tmp/tmp.klG7ApCK4b/hydra-1.0.2.132563.deb alation-hydra amd64 1.0.2.132563 [21.1 MB]
Get:5 http://us-east-1.ec2.archive.ubuntu.com/ubuntu xenial-updates/universe amd64 docker.io amd64 18.09.7-0ubuntu1~16.04.7 [30.5 MB]
Get:6 http://us-east-1.ec2.archive.ubuntu.com/ubuntu xenial/main amd64 bridge-utils amd64 1.5-9ubuntu1 [28.6 kB]
Get:7 http://us-east-1.ec2.archive.ubuntu.com/ubuntu xenial/universe amd64 cgroupfs-mount all 1.2 [4,970 B]
Get:8 http://us-east-1.ec2.archive.ubuntu.com/ubuntu xenial-updates/main amd64 ubuntu-fan all 0.12.8~16.04.3 [35.1 kB]
Fetched 52.4 MB in 1s (40.9 MB/s)
Selecting previously unselected package pigz.
(Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 66244 files and directories currently installed.)
Preparing to unpack .../pigz_2.3.1-2_amd64.deb ...
Unpacking pigz (2.3.1-2) ...
Selecting previously unselected package runc.
Preparing to unpack .../runc_1.0.0~rc7+git20190403.029124da-0ubuntu1~16.04.4_amd64.deb ...
Unpacking runc (1.0.0~rc7+git20190403.029124da-0ubuntu1~16.04.4) ...
Selecting previously unselected package containerd.
Preparing to unpack .../containerd_1.2.6-0ubuntu1~16.04.6_amd64.deb ...
Unpacking containerd (1.2.6-0ubuntu1~16.04.6) ...
Selecting previously unselected package docker.io.
Preparing to unpack .../docker.io_18.09.7-0ubuntu1~16.04.7_amd64.deb ...
Unpacking docker.io (18.09.7-0ubuntu1~16.04.7) ...
Selecting previously unselected package alation-hydra.
Preparing to unpack .../hydra-1.0.2.132563.deb ...
Unpacking alation-hydra (1.0.2.132563) ...
Selecting previously unselected package bridge-utils.
Preparing to unpack .../bridge-utils_1.5-9ubuntu1_amd64.deb ...
Unpacking bridge-utils (1.5-9ubuntu1) ...
Selecting previously unselected package cgroupfs-mount.
Preparing to unpack .../cgroupfs-mount_1.2_all.deb ...
Unpacking cgroupfs-mount (1.2) ...
Selecting previously unselected package ubuntu-fan.
Preparing to unpack .../ubuntu-fan_0.12.8~16.04.3_all.deb ...
Unpacking ubuntu-fan (0.12.8~16.04.3) ...
Processing triggers for man-db (2.7.5-1) ...
Processing triggers for ureadahead (0.100.0-19.1) ...
Processing triggers for systemd (229-4ubuntu21.29) ...
Setting up pigz (2.3.1-2) ...
Setting up runc (1.0.0~rc7+git20190403.029124da-0ubuntu1~16.04.4) ...
Setting up containerd (1.2.6-0ubuntu1~16.04.6) ...
Setting up docker.io (18.09.7-0ubuntu1~16.04.7) ...
debconf: unable to initialize frontend: Dialog
debconf: (Dialog frontend will not work on a dumb terminal, an emacs shell buffer, or without a controlling terminal.)
debconf: falling back to frontend: Readline
Adding group `docker' (GID 116) ...
Done.
Setting up alation-hydra (1.0.2.132563) ...
Synchronizing state of docker.service with SysV init with /lib/systemd/systemd-sysv-install...
Executing /lib/systemd/systemd-sysv-install enable docker
Created symlink from /etc/systemd/system/multi-user.target.wants/hydra.service to /usr/lib/systemd/system/hydra.service.
Setting up bridge-utils (1.5-9ubuntu1) ...
debconf: unable to initialize frontend: Dialog
debconf: (Dialog frontend will not work on a dumb terminal, an emacs shell buffer, or without a controlling terminal.)
debconf: falling back to frontend: Readline
Setting up cgroupfs-mount (1.2) ...
Setting up ubuntu-fan (0.12.8~16.04.3) ...
Processing triggers for ureadahead (0.100.0-19.1) ...
Processing triggers for systemd (229-4ubuntu21.29) ...
Containers: 0
 Running: 0
 Paused: 0
 Stopped: 0
Images: 0
Server Version: 18.09.7
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
containerd version: 
runc version: N/A
init version: v0.18.0 (expected: fec3683b971d9c3ef73f284f176672c44b448662)
Security Options:
 apparmor
 seccomp
  Profile: default
Kernel Version: 4.4.0-1124-aws
Operating System: Ubuntu 16.04.7 LTS
OSType: linux
Architecture: x86_64
CPUs: 2
Total Memory: 14.93GiB
Name: ip-10-13-50-226
ID: HT7N:KCKJ:THNF:5ENT:BGPQ:6ALC:WD4M:733W:ZOML:KK6G:V7RW:SYSS
Docker Root Dir: /var/lib/docker
Debug Mode (client): false
Debug Mode (server): false
Registry: https://index.docker.io/v1/
Labels:
Experimental: false
Insecure Registries:
 127.0.0.0/8
Live Restore Enabled: false

8fc0ce7fe858        agent               "agent"             Less than a second ago   Up Less than a second                       agent
3543dcf7d9a0        ca                  "ca"                2 seconds ago       Up 1 second                                 ca
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
0 upgraded, 1 newly installed, 2 to remove and 2 not upgraded.
Need to get 0 B/64.3 MB of archives.
After this operation, 248 MB disk space will be freed.
Get:1 /home/ssh-user/alation-containerizer_1.0.0_amd64.deb alation-containerizer amd64 1.0.0 [64.3 MB]
dpkg: docker.io: dependency problems, but removing anyway as you requested:
 alation-hydra depends on docker.io (>= 18.09.1) | docker-ce (>= 18.09.1); however:
  Package docker.io is to be removed.
  Package docker-ce is not installed.

(Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 66696 files and directories currently installed.)
Removing docker.io (18.09.7-0ubuntu1~16.04.7) ...
'/usr/share/docker.io/contrib/nuke-graph-directory.sh' -> '/var/lib/docker/nuke-graph-directory.sh'
Removing containerd (1.2.6-0ubuntu1~16.04.6) ...
Processing triggers for man-db (2.7.5-1) ...
Selecting previously unselected package alation-containerizer.
(Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 66477 files and directories currently installed.)
Preparing to unpack .../alation-containerizer_1.0.0_amd64.deb ...
Unpacking alation-containerizer (1.0.0) ...
Setting up alation-containerizer (1.0.0) ...
Removed symlink /etc/systemd/system/docker.service.
Removed symlink /etc/systemd/system/docker.socket.
Removed symlink /etc/systemd/system/containerd.service.
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
 Kernel Version: 4.4.0-1124-aws
 Operating System: Ubuntu 16.04.7 LTS
 OSType: linux
 Architecture: x86_64
 CPUs: 2
 Total Memory: 14.93GiB
 Name: ip-10-13-50-226
 ID: HT7N:KCKJ:THNF:5ENT:BGPQ:6ALC:WD4M:733W:ZOML:KK6G:V7RW:SYSS
 Docker Root Dir: /var/lib/docker
 Debug Mode: false
 Registry: https://index.docker.io/v1/
 Labels:
 Experimental: false
 Insecure Registries:
  127.0.0.0/8
 Live Restore Enabled: false
 Product License: Community Engine

8fc0ce7fe858   agent     "agent"   25 seconds ago   Up Less than a second             agent
3543dcf7d9a0   ca        "ca"      26 seconds ago   Up Less than a second             ca
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
0 upgraded, 2 newly installed, 1 to remove and 2 not upgraded.
Need to get 50.4 MB of archives.
After this operation, 248 MB of additional disk space will be used.
Get:1 http://us-east-1.ec2.archive.ubuntu.com/ubuntu xenial-updates/universe amd64 docker.io amd64 18.09.7-0ubuntu1~16.04.7 [30.5 MB]
Get:2 http://us-east-1.ec2.archive.ubuntu.com/ubuntu xenial-updates/universe amd64 containerd amd64 1.2.6-0ubuntu1~16.04.6 [19.9 MB]
Fetched 50.4 MB in 1s (50.4 MB/s)
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

(Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 66496 files and directories currently installed.)
Removing alation-containerizer (1.0.0) ...
Selecting previously unselected package docker.io.
(Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 66477 files and directories currently installed.)
Preparing to unpack .../docker.io_18.09.7-0ubuntu1~16.04.7_amd64.deb ...
Unpacking docker.io (18.09.7-0ubuntu1~16.04.7) ...
Selecting previously unselected package containerd.
Preparing to unpack .../containerd_1.2.6-0ubuntu1~16.04.6_amd64.deb ...
Unpacking containerd (1.2.6-0ubuntu1~16.04.6) ...
Processing triggers for ureadahead (0.100.0-19.1) ...
Processing triggers for systemd (229-4ubuntu21.29) ...
Processing triggers for man-db (2.7.5-1) ...
Setting up containerd (1.2.6-0ubuntu1~16.04.6) ...
Setting up docker.io (18.09.7-0ubuntu1~16.04.7) ...
debconf: unable to initialize frontend: Dialog
debconf: (Dialog frontend will not work on a dumb terminal, an emacs shell buffer, or without a controlling terminal.)
debconf: falling back to frontend: Readline
Containers: 2
 Running: 0
 Paused: 0
 Stopped: 2
Images: 3
Server Version: 18.09.7
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
containerd version: 
runc version: N/A
init version: v0.18.0 (expected: fec3683b971d9c3ef73f284f176672c44b448662)
Security Options:
 apparmor
 seccomp
  Profile: default
Kernel Version: 4.4.0-1124-aws
Operating System: Ubuntu 16.04.7 LTS
OSType: linux
Architecture: x86_64
CPUs: 2
Total Memory: 14.93GiB
Name: ip-10-13-50-226
ID: HT7N:KCKJ:THNF:5ENT:BGPQ:6ALC:WD4M:733W:ZOML:KK6G:V7RW:SYSS
Docker Root Dir: /var/lib/docker
Debug Mode (client): false
Debug Mode (server): false
Registry: https://index.docker.io/v1/
Labels:
Experimental: false
Insecure Registries:
 127.0.0.0/8
Live Restore Enabled: false

8fc0ce7fe858        agent               "agent"             49 seconds ago      Up Less than a second                       agent
3543dcf7d9a0        ca                  "ca"                50 seconds ago      Up Less than a second                       ca
SUCCESS
