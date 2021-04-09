/sbin/iptables
Last metadata expiration check: 0:32:09 ago on Fri 09 Apr 2021 09:44:27 PM UTC.
Package containerd.io-1.3.7-3.1.el8.x86_64 is already installed.
Package docker-ce-3:19.03.13-3.el8.x86_64 is already installed.
Package docker-ce-cli-1:19.03.13-3.el8.x86_64 is already installed.
Dependencies resolved.
Nothing to do.
Complete!
Client:
 Debug Mode: false

Server:
 Containers: 0
  Running: 0
  Paused: 0
  Stopped: 0
 Images: 0
 Server Version: 19.03.13
 Storage Driver: overlay2
  Backing Filesystem: xfs
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
 containerd version: 8fba4e9a7d01810a393d5d25a3621dc101981175
 runc version: dc9208a3303feef5b3839f4323d9beb36df0a9dd
 init version: fec3683
 Security Options:
  seccomp
   Profile: default
 Kernel Version: 4.18.0-147.8.1.el8_1.x86_64
 Operating System: CentOS Linux 8 (Core)
 OSType: linux
 Architecture: x86_64
 CPUs: 2
 Total Memory: 14.76GiB
 Name: ip-10-13-87-124.alation-test.com
 ID: OIVD:EKON:HO2P:5IOF:VLDM:FZ5B:KJPM:MXMH:2LOU:RPS3:RVSQ:PHBM
 Docker Root Dir: /var/lib/docker
 Debug Mode: false
 Registry: https://index.docker.io/v1/
 Labels:
 Experimental: false
 Insecure Registries:
  127.0.0.0/8
 Live Restore Enabled: false

Verifying...                          ########################################
Preparing...                          ########################################
Updating / installing...
alation-hydra-1.0.2.132563-1.0        ########################################
e251ac68fa0b        agent               "agent"             1 second ago        Up Less than a second                       agent
f6681e8d4262        ca                  "ca"                2 seconds ago       Up 1 second                                 ca
Last metadata expiration check: 0:32:31 ago on Fri 09 Apr 2021 09:44:27 PM UTC.
Dependencies resolved.
================================================================================
 Package                    Arch        Version         Repository         Size
================================================================================
Installing:
 alation-containerizer      x86_64      1:1.0.0-1       @commandline       69 M
     replacing  containerd.io.x86_64 1.3.7-3.1.el8
     replacing  docker-ce.x86_64 3:19.03.13-3.el8
     replacing  docker-ce-cli.x86_64 1:19.03.13-3.el8

Transaction Summary
================================================================================
Install  1 Package

Total size: 69 M
Downloading Packages:
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Preparing        :                                                        1/1 
  Running scriptlet: alation-containerizer-1:1.0.0-1.x86_64                 1/1 
  Running scriptlet: alation-containerizer-1:1.0.0-1.x86_64                 1/4 
  Installing       : alation-containerizer-1:1.0.0-1.x86_64                 1/4 
  Running scriptlet: alation-containerizer-1:1.0.0-1.x86_64                 1/4 
  Running scriptlet: docker-ce-3:19.03.13-3.el8.x86_64                      2/4 
  Obsoleting       : docker-ce-3:19.03.13-3.el8.x86_64                      2/4 
  Running scriptlet: docker-ce-3:19.03.13-3.el8.x86_64                      2/4 
  Running scriptlet: containerd.io-1.3.7-3.1.el8.x86_64                     3/4 
  Obsoleting       : containerd.io-1.3.7-3.1.el8.x86_64                     3/4 
  Running scriptlet: containerd.io-1.3.7-3.1.el8.x86_64                     3/4 
  Obsoleting       : docker-ce-cli-1:19.03.13-3.el8.x86_64                  4/4 
  Running scriptlet: docker-ce-cli-1:19.03.13-3.el8.x86_64                  4/4 
  Verifying        : alation-containerizer-1:1.0.0-1.x86_64                 1/4 
  Verifying        : containerd.io-1.3.7-3.1.el8.x86_64                     2/4 
  Verifying        : docker-ce-3:19.03.13-3.el8.x86_64                      3/4 
  Verifying        : docker-ce-cli-1:19.03.13-3.el8.x86_64                  4/4 

Installed:
  alation-containerizer-1:1.0.0-1.x86_64                                        

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
 Kernel Version: 4.18.0-147.8.1.el8_1.x86_64
 Operating System: CentOS Linux 8 (Core)
 OSType: linux
 Architecture: x86_64
 CPUs: 2
 Total Memory: 14.76GiB
 Name: ip-10-13-87-124.alation-test.com
 ID: OIVD:EKON:HO2P:5IOF:VLDM:FZ5B:KJPM:MXMH:2LOU:RPS3:RVSQ:PHBM
 Docker Root Dir: /var/lib/docker
 Debug Mode: false
 Registry: https://index.docker.io/v1/
 Labels:
 Experimental: false
 Insecure Registries:
  127.0.0.0/8
 Live Restore Enabled: false
 Product License: Community Engine

e251ac68fa0b   agent     "agent"   32 seconds ago   Up Less than a second             agent
f6681e8d4262   ca        "ca"      33 seconds ago   Up Less than a second             ca
/sbin/iptables
Last metadata expiration check: 0:33:04 ago on Fri 09 Apr 2021 09:44:27 PM UTC.
Dependencies resolved.
================================================================================
 Package            Arch        Version                 Repository         Size
================================================================================
Installing:
 containerd.io      x86_64      1.3.7-3.1.el8           @commandline       29 M
 docker-ce          x86_64      3:19.03.13-3.el8        @commandline       24 M
 docker-ce-cli      x86_64      1:19.03.13-3.el8        @commandline       38 M

Transaction Summary
================================================================================
Install  3 Packages

Total size: 91 M
Installed size: 385 M
Downloading Packages:
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Preparing        :                                                        1/1 
  Installing       : docker-ce-cli-1:19.03.13-3.el8.x86_64                  1/3 
  Running scriptlet: docker-ce-cli-1:19.03.13-3.el8.x86_64                  1/3 
  Installing       : containerd.io-1.3.7-3.1.el8.x86_64                     2/3 
  Running scriptlet: containerd.io-1.3.7-3.1.el8.x86_64                     2/3 
  Installing       : docker-ce-3:19.03.13-3.el8.x86_64                      3/3 
  Running scriptlet: docker-ce-3:19.03.13-3.el8.x86_64                      3/3 
  Verifying        : containerd.io-1.3.7-3.1.el8.x86_64                     1/3 
  Verifying        : docker-ce-3:19.03.13-3.el8.x86_64                      2/3 
  Verifying        : docker-ce-cli-1:19.03.13-3.el8.x86_64                  3/3 

Installed:
  containerd.io-1.3.7-3.1.el8.x86_64       docker-ce-3:19.03.13-3.el8.x86_64   
  docker-ce-cli-1:19.03.13-3.el8.x86_64   

Complete!
Client:
 Debug Mode: false

Server:
 Containers: 2
  Running: 0
  Paused: 0
  Stopped: 2
 Images: 3
 Server Version: 19.03.13
 Storage Driver: overlay2
  Backing Filesystem: xfs
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
 containerd version: 8fba4e9a7d01810a393d5d25a3621dc101981175
 runc version: dc9208a3303feef5b3839f4323d9beb36df0a9dd
 init version: fec3683
 Security Options:
  seccomp
   Profile: default
 Kernel Version: 4.18.0-147.8.1.el8_1.x86_64
 Operating System: CentOS Linux 8 (Core)
 OSType: linux
 Architecture: x86_64
 CPUs: 2
 Total Memory: 14.76GiB
 Name: ip-10-13-87-124.alation-test.com
 ID: OIVD:EKON:HO2P:5IOF:VLDM:FZ5B:KJPM:MXMH:2LOU:RPS3:RVSQ:PHBM
 Docker Root Dir: /var/lib/docker
 Debug Mode: false
 Registry: https://index.docker.io/v1/
 Labels:
 Experimental: false
 Insecure Registries:
  127.0.0.0/8
 Live Restore Enabled: false

e251ac68fa0b        agent               "agent"             About a minute ago   Up Less than a second                       agent
f6681e8d4262        ca                  "ca"                About a minute ago   Up 1 second                                 ca
SUCCESS
