/sbin/iptables
Loaded plugins: fastestmirror
Examining ./containerd.io-1.2.0-3.el7.x86_64.rpm: containerd.io-1.2.0-3.el7.x86_64
Marking ./containerd.io-1.2.0-3.el7.x86_64.rpm to be installed
Examining ./container-selinux-2.107-3.el7.noarch.rpm: 2:container-selinux-2.107-3.el7.noarch
./container-selinux-2.107-3.el7.noarch.rpm: does not update installed package.
Examining ./docker-ce-18.09.0-3.el7.x86_64.rpm: 3:docker-ce-18.09.0-3.el7.x86_64
Marking ./docker-ce-18.09.0-3.el7.x86_64.rpm to be installed
Examining ./docker-ce-cli-18.09.0-3.el7.x86_64.rpm: 1:docker-ce-cli-18.09.0-3.el7.x86_64
Marking ./docker-ce-cli-18.09.0-3.el7.x86_64.rpm to be installed
Resolving Dependencies
--> Running transaction check
---> Package containerd.io.x86_64 0:1.2.0-3.el7 will be installed
---> Package docker-ce.x86_64 3:18.09.0-3.el7 will be installed
---> Package docker-ce-cli.x86_64 1:18.09.0-3.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package       Arch   Version         Repository                           Size
================================================================================
Installing:
 containerd.io x86_64 1.2.0-3.el7     /containerd.io-1.2.0-3.el7.x86_64    88 M
 docker-ce     x86_64 3:18.09.0-3.el7 /docker-ce-18.09.0-3.el7.x86_64      81 M
 docker-ce-cli x86_64 1:18.09.0-3.el7 /docker-ce-cli-18.09.0-3.el7.x86_64  66 M

Transaction Summary
================================================================================
Install  3 Packages

Total size: 235 M
Installed size: 235 M
Downloading packages:
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : containerd.io-1.2.0-3.el7.x86_64                             1/3 
  Installing : 1:docker-ce-cli-18.09.0-3.el7.x86_64                         2/3 
  Installing : 3:docker-ce-18.09.0-3.el7.x86_64                             3/3 
  Verifying  : 1:docker-ce-cli-18.09.0-3.el7.x86_64                         1/3 
  Verifying  : containerd.io-1.2.0-3.el7.x86_64                             2/3 
  Verifying  : 3:docker-ce-18.09.0-3.el7.x86_64                             3/3 

Installed:
  containerd.io.x86_64 0:1.2.0-3.el7       docker-ce.x86_64 3:18.09.0-3.el7    
  docker-ce-cli.x86_64 1:18.09.0-3.el7    

Complete!
Containers: 2
 Running: 0
 Paused: 0
 Stopped: 2
Images: 3
Server Version: 18.09.0
Storage Driver: overlay2
 Backing Filesystem: xfs
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
containerd version: c4446665cb9c30056f4998ed953e6d4ff22c7c39
runc version: 4fc53a81fb7c994640722ac585fa9ca548971871
init version: fec3683
Security Options:
 seccomp
  Profile: default
Kernel Version: 3.10.0-1062.18.1.el7.x86_64
Operating System: CentOS Linux 7 (Core)
OSType: linux
Architecture: x86_64
CPUs: 2
Total Memory: 14.77GiB
Name: ip-10-13-81-93.alation-test.com
ID: FLMD:5VI2:FUHX:KYKC:XDX2:JBNE:PEMW:OTCV:EMZC:KONL:MEMA:TUBC
Docker Root Dir: /var/lib/docker
Debug Mode (client): false
Debug Mode (server): false
Registry: https://index.docker.io/v1/
Labels:
Experimental: false
Insecure Registries:
 127.0.0.0/8
Live Restore Enabled: false
Product License: Community Engine

Preparing...                          ########################################
Updating / installing...
alation-hydra-1.0.2.132563-1.0        ########################################
f83973fba9c4        agent               "agent"             6 minutes ago       Up Less than a second                       agent
00b279e860aa        ca                  "ca"                6 minutes ago       Up Less than a second                       ca
  File: ‘alation-containerizer-1.0.0-1.x86_64.rpm’
  Size: 72591512  	Blocks: 141784     IO Block: 4096   regular file
Device: ca01h/51713d	Inode: 8482553     Links: 1
Access: (0644/-rw-r--r--)  Uid: (    0/    root)   Gid: (    0/    root)
Context: unconfined_u:object_r:user_home_t:s0
Access: 2021-04-09 22:13:41.655638909 +0000
Modify: 2021-04-09 22:08:52.345368298 +0000
Change: 2021-04-09 22:08:52.345368298 +0000
 Birth: -
Loaded plugins: fastestmirror
Examining alation-containerizer-1.0.0-1.x86_64.rpm: 1:alation-containerizer-1.0.0-1.x86_64
Marking alation-containerizer-1.0.0-1.x86_64.rpm to be installed
Resolving Dependencies
--> Running transaction check
---> Package alation-containerizer.x86_64 1:1.0.0-1 will be obsoleting
---> Package containerd.io.x86_64 0:1.2.0-3.el7 will be obsoleted
---> Package docker-ce.x86_64 3:18.09.0-3.el7 will be obsoleted
---> Package docker-ce-cli.x86_64 1:18.09.0-3.el7 will be obsoleted
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package           Arch   Version   Repository                             Size
================================================================================
Installing:
 alation-containerizer
                   x86_64 1:1.0.0-1 /alation-containerizer-1.0.0-1.x86_64 271 M
     replacing  containerd.io.x86_64 1.2.0-3.el7
     replacing  docker-ce.x86_64 3:18.09.0-3.el7
     replacing  docker-ce-cli.x86_64 1:18.09.0-3.el7

Transaction Summary
================================================================================
Install  1 Package

Total size: 271 M
Downloading packages:
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : 1:alation-containerizer-1.0.0-1.x86_64                       1/4 
/usr/bin/dockerd has not been configured as an alternative for dockerd
  Erasing    : 3:docker-ce-18.09.0-3.el7.x86_64                             2/4 
  Erasing    : 1:docker-ce-cli-18.09.0-3.el7.x86_64                         3/4 
  Erasing    : containerd.io-1.2.0-3.el7.x86_64                             4/4 
  Verifying  : 1:alation-containerizer-1.0.0-1.x86_64                       1/4 
  Verifying  : 1:docker-ce-cli-18.09.0-3.el7.x86_64                         2/4 
  Verifying  : containerd.io-1.2.0-3.el7.x86_64                             3/4 
  Verifying  : 3:docker-ce-18.09.0-3.el7.x86_64                             4/4 

Installed:
  alation-containerizer.x86_64 1:1.0.0-1                                        

Replaced:
  containerd.io.x86_64 0:1.2.0-3.el7       docker-ce.x86_64 3:18.09.0-3.el7    
  docker-ce-cli.x86_64 1:18.09.0-3.el7    

Complete!
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
  Backing Filesystem: xfs
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
 runc version: 12644e614e25b05da6fd08a38ffa0cfe1903fdec
 init version: de40ad0
 Security Options:
  seccomp
   Profile: default
 Kernel Version: 3.10.0-1062.18.1.el7.x86_64
 Operating System: CentOS Linux 7 (Core)
 OSType: linux
 Architecture: x86_64
 CPUs: 2
 Total Memory: 14.77GiB
 Name: ip-10-13-81-93.alation-test.com
 ID: FLMD:5VI2:FUHX:KYKC:XDX2:JBNE:PEMW:OTCV:EMZC:KONL:MEMA:TUBC
 Docker Root Dir: /var/lib/docker
 Debug Mode: false
 Registry: https://index.docker.io/v1/
 Labels:
 Experimental: false
 Insecure Registries:
  127.0.0.0/8
 Live Restore Enabled: false
 Product License: Community Engine

f83973fba9c4   agent     "agent"   7 minutes ago   Up Less than a second             agent
00b279e860aa   ca        "ca"      7 minutes ago   Up Less than a second             ca
/sbin/iptables
Loaded plugins: fastestmirror
Examining ./containerd.io-1.2.0-3.el7.x86_64.rpm: containerd.io-1.2.0-3.el7.x86_64
Marking ./containerd.io-1.2.0-3.el7.x86_64.rpm to be installed
Examining ./container-selinux-2.107-3.el7.noarch.rpm: 2:container-selinux-2.107-3.el7.noarch
./container-selinux-2.107-3.el7.noarch.rpm: does not update installed package.
Examining ./docker-ce-18.09.0-3.el7.x86_64.rpm: 3:docker-ce-18.09.0-3.el7.x86_64
Marking ./docker-ce-18.09.0-3.el7.x86_64.rpm to be installed
Examining ./docker-ce-cli-18.09.0-3.el7.x86_64.rpm: 1:docker-ce-cli-18.09.0-3.el7.x86_64
Marking ./docker-ce-cli-18.09.0-3.el7.x86_64.rpm to be installed
Resolving Dependencies
--> Running transaction check
---> Package containerd.io.x86_64 0:1.2.0-3.el7 will be installed
---> Package docker-ce.x86_64 3:18.09.0-3.el7 will be installed
---> Package docker-ce-cli.x86_64 1:18.09.0-3.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package       Arch   Version         Repository                           Size
================================================================================
Installing:
 containerd.io x86_64 1.2.0-3.el7     /containerd.io-1.2.0-3.el7.x86_64    88 M
 docker-ce     x86_64 3:18.09.0-3.el7 /docker-ce-18.09.0-3.el7.x86_64      81 M
 docker-ce-cli x86_64 1:18.09.0-3.el7 /docker-ce-cli-18.09.0-3.el7.x86_64  66 M

Transaction Summary
================================================================================
Install  3 Packages

Total size: 235 M
Installed size: 235 M
Downloading packages:
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : containerd.io-1.2.0-3.el7.x86_64                             1/3 
  Installing : 1:docker-ce-cli-18.09.0-3.el7.x86_64                         2/3 
  Installing : 3:docker-ce-18.09.0-3.el7.x86_64                             3/3 
  Verifying  : 1:docker-ce-cli-18.09.0-3.el7.x86_64                         1/3 
  Verifying  : containerd.io-1.2.0-3.el7.x86_64                             2/3 
  Verifying  : 3:docker-ce-18.09.0-3.el7.x86_64                             3/3 

Installed:
  containerd.io.x86_64 0:1.2.0-3.el7       docker-ce.x86_64 3:18.09.0-3.el7    
  docker-ce-cli.x86_64 1:18.09.0-3.el7    

Complete!
Containers: 2
 Running: 0
 Paused: 0
 Stopped: 2
Images: 3
Server Version: 18.09.0
Storage Driver: overlay2
 Backing Filesystem: xfs
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
containerd version: c4446665cb9c30056f4998ed953e6d4ff22c7c39
runc version: 4fc53a81fb7c994640722ac585fa9ca548971871
init version: fec3683
Security Options:
 seccomp
  Profile: default
Kernel Version: 3.10.0-1062.18.1.el7.x86_64
Operating System: CentOS Linux 7 (Core)
OSType: linux
Architecture: x86_64
CPUs: 2
Total Memory: 14.77GiB
Name: ip-10-13-81-93.alation-test.com
ID: FLMD:5VI2:FUHX:KYKC:XDX2:JBNE:PEMW:OTCV:EMZC:KONL:MEMA:TUBC
Docker Root Dir: /var/lib/docker
Debug Mode (client): false
Debug Mode (server): false
Registry: https://index.docker.io/v1/
Labels:
Experimental: false
Insecure Registries:
 127.0.0.0/8
Live Restore Enabled: false
Product License: Community Engine

f83973fba9c4        agent               "agent"             7 minutes ago       Up Less than a second                       agent
00b279e860aa        ca                  "ca"                7 minutes ago       Up Less than a second                       ca
SUCCESS
