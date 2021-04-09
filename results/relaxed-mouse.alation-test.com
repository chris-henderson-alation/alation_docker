/sbin/iptables
Reading package lists...
Building dependency tree...
Reading state information...
docker-ce is already the newest version (5:19.03.9~3-0~debian-stretch).
containerd.io is already the newest version (1.4.3-1).
docker-ce-cli is already the newest version (5:19.03.9~3-0~debian-stretch).
0 upgraded, 0 newly installed, 0 to remove and 48 not upgraded.
Client:
 Debug Mode: false

Server:
 Containers: 0
  Running: 0
  Paused: 0
  Stopped: 0
 Images: 0
 Server Version: 19.03.9
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
 containerd version: 269548fa27e0089a8b8278fc4fc781d7f65a939b
 runc version: ff819c7e9184c13b7c2607fe6c30ae19403a7aff
 init version: fec3683
 Security Options:
  seccomp
   Profile: default
 Kernel Version: 4.9.0-14-amd64
 Operating System: Debian GNU/Linux 9 (stretch)
 OSType: linux
 Architecture: x86_64
 CPUs: 2
 Total Memory: 14.94GiB
 Name: ip-10-13-86-8
 ID: GXC6:DE72:XCER:SN77:HKNZ:DRQG:FUPM:4N37:YDUQ:E5HH:OFVQ:J7JS
 Docker Root Dir: /var/lib/docker
 Debug Mode: false
 Registry: https://index.docker.io/v1/
 Labels:
 Experimental: false
 Insecure Registries:
  127.0.0.0/8
 Live Restore Enabled: false

Reading package lists...
Building dependency tree...
Reading state information...
The following NEW packages will be installed:
  alation-hydra
0 upgraded, 1 newly installed, 0 to remove and 48 not upgraded.
Need to get 0 B/21.1 MB of archives.
After this operation, 0 B of additional disk space will be used.
Get:1 /tmp/tmp.bhNGV6p4Lg/hydra-1.0.2.132563.deb alation-hydra amd64 1.0.2.132563 [21.1 MB]
Selecting previously unselected package alation-hydra.
(Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 71727 files and directories currently installed.)
Preparing to unpack .../hydra-1.0.2.132563.deb ...
Unpacking alation-hydra (1.0.2.132563) ...
Setting up alation-hydra (1.0.2.132563) ...
Reloading systemd unit files in order to register Hydra
Synchronizing state of docker.service with SysV service script with /lib/systemd/systemd-sysv-install.
Executing: /lib/systemd/systemd-sysv-install enable docker
Created symlink /etc/systemd/system/multi-user.target.wants/hydra.service → /usr/lib/systemd/system/hydra.service.
75d0d852b0b9        agent               "agent"             1 second ago        Up Less than a second                       agent
bb1baa53c9fd        ca                  "ca"                2 seconds ago       Up 1 second                                 ca
Reading package lists...
Building dependency tree...
Reading state information...
The following packages were automatically installed and are no longer required:
  aufs-dkms aufs-tools cgroupfs-mount dkms fakeroot gcc gcc-6 git git-man
  libasan3 libatomic1 libc-dev-bin libc6-dev libcc1-0 libcilkrts5
  liberror-perl libfakeroot libgcc-6-dev libgomp1 libitm1 liblsan0 libltdl7
  libmpx2 libquadmath0 libtsan0 libubsan0 linux-compiler-gcc-6-x86
  linux-headers-4.9.0-15-amd64 linux-headers-4.9.0-15-common
  linux-headers-amd64 linux-kbuild-4.9 linux-libc-dev manpages-dev patch pigz
  rsync
Use 'sudo apt autoremove' to remove them.
The following packages will be REMOVED:
  containerd.io docker-ce docker-ce-cli
The following NEW packages will be installed:
  alation-containerizer
0 upgraded, 1 newly installed, 3 to remove and 48 not upgraded.
Need to get 0 B/64.3 MB of archives.
After this operation, 410 MB disk space will be freed.
Get:1 /home/ssh-user/alation-containerizer_1.0.0_amd64.deb alation-containerizer amd64 1.0.0 [64.3 MB]
dpkg: containerd.io: dependency problems, but removing anyway as you requested:
 docker-ce depends on containerd.io (>= 1.2.2-3).

(Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 71865 files and directories currently installed.)
Removing containerd.io (1.4.3-1) ...
dpkg: docker-ce: dependency problems, but removing anyway as you requested:
 alation-hydra depends on docker.io (>= 18.09.1) | docker-ce (>= 18.09.1); however:
  Package docker.io is not installed.
  Package docker-ce is to be removed.

Removing docker-ce (5:19.03.9~3-0~debian-stretch) ...
Removing docker-ce-cli (5:19.03.9~3-0~debian-stretch) ...
Selecting previously unselected package alation-containerizer.
(Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 71638 files and directories currently installed.)
Preparing to unpack .../alation-containerizer_1.0.0_amd64.deb ...
Unpacking alation-containerizer (1.0.0) ...
Setting up alation-containerizer (1.0.0) ...
Removed /etc/systemd/system/docker.service.
Removed /etc/systemd/system/docker.socket.
Removed /etc/systemd/system/containerd.service.
Processing triggers for man-db (2.7.6.1-2) ...
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
 Runtimes: runc io.containerd.runc.v2 io.containerd.runtime.v1.linux
 Default Runtime: runc
 Init Binary: docker-init
 containerd version: 269548fa27e0089a8b8278fc4fc781d7f65a939b
 runc version: 12644e614e25b05da6fd08a38ffa0cfe1903fdec
 init version: de40ad0
 Security Options:
  seccomp
   Profile: default
 Kernel Version: 4.9.0-14-amd64
 Operating System: Debian GNU/Linux 9 (stretch)
 OSType: linux
 Architecture: x86_64
 CPUs: 2
 Total Memory: 14.94GiB
 Name: ip-10-13-86-8
 ID: GXC6:DE72:XCER:SN77:HKNZ:DRQG:FUPM:4N37:YDUQ:E5HH:OFVQ:J7JS
 Docker Root Dir: /var/lib/docker
 Debug Mode: false
 Registry: https://index.docker.io/v1/
 Labels:
 Experimental: false
 Insecure Registries:
  127.0.0.0/8
 Live Restore Enabled: false
 Product License: Community Engine

75d0d852b0b9   agent     "agent"   28 seconds ago   Up Less than a second             agent
bb1baa53c9fd   ca        "ca"      29 seconds ago   Up Less than a second             ca
/sbin/iptables
Reading package lists...
Building dependency tree...
Reading state information...
The following packages will be REMOVED:
  alation-containerizer
The following NEW packages will be installed:
  containerd.io docker-ce docker-ce-cli
0 upgraded, 3 newly installed, 1 to remove and 48 not upgraded.
Need to get 0 B/41.2 MB of archives.
After this operation, 410 MB of additional disk space will be used.
Get:1 /tmp/tmp.GI27NumIHz/docker-ce_19.03.9~3-0~debian-stretch_amd64.deb docker-ce amd64 5:19.03.9~3-0~debian-stretch [22.5 MB]
Get:2 /tmp/tmp.GI27NumIHz/docker-ce-cli_19.03.9~3-0~debian-stretch_amd64.deb docker-ce-cli amd64 5:19.03.9~3-0~debian-stretch [41.2 MB]
Get:3 /tmp/tmp.GI27NumIHz/containerd.io_1.4.3-1_amd64.deb containerd.io amd64 1.4.3-1 [28.1 MB]
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

(Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 71655 files and directories currently installed.)
Removing alation-containerizer (1.0.0) ...
Selecting previously unselected package docker-ce.
(Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 71637 files and directories currently installed.)
Preparing to unpack .../docker-ce_19.03.9~3-0~debian-stretch_amd64.deb ...
Unpacking docker-ce (5:19.03.9~3-0~debian-stretch) ...
Selecting previously unselected package docker-ce-cli.
Preparing to unpack .../docker-ce-cli_19.03.9~3-0~debian-stretch_amd64.deb ...
Unpacking docker-ce-cli (5:19.03.9~3-0~debian-stretch) ...
Selecting previously unselected package containerd.io.
Preparing to unpack .../containerd.io_1.4.3-1_amd64.deb ...
Unpacking containerd.io (1.4.3-1) ...
Setting up containerd.io (1.4.3-1) ...
Processing triggers for systemd (232-25+deb9u12) ...
Processing triggers for man-db (2.7.6.1-2) ...
Setting up docker-ce-cli (5:19.03.9~3-0~debian-stretch) ...
Setting up docker-ce (5:19.03.9~3-0~debian-stretch) ...
Client:
 Debug Mode: false

Server:
 Containers: 2
  Running: 0
  Paused: 0
  Stopped: 2
 Images: 3
 Server Version: 19.03.9
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
 containerd version: 269548fa27e0089a8b8278fc4fc781d7f65a939b
 runc version: ff819c7e9184c13b7c2607fe6c30ae19403a7aff
 init version: fec3683
 Security Options:
  seccomp
   Profile: default
 Kernel Version: 4.9.0-14-amd64
 Operating System: Debian GNU/Linux 9 (stretch)
 OSType: linux
 Architecture: x86_64
 CPUs: 2
 Total Memory: 14.94GiB
 Name: ip-10-13-86-8
 ID: GXC6:DE72:XCER:SN77:HKNZ:DRQG:FUPM:4N37:YDUQ:E5HH:OFVQ:J7JS
 Docker Root Dir: /var/lib/docker
 Debug Mode: false
 Registry: https://index.docker.io/v1/
 Labels:
 Experimental: false
 Insecure Registries:
  127.0.0.0/8
 Live Restore Enabled: false

75d0d852b0b9        agent               "agent"             59 seconds ago       Up Less than a second                       agent
bb1baa53c9fd        ca                  "ca"                About a minute ago   Up Less than a second                       ca
SUCCESS
