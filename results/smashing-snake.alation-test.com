/sbin/iptables
Last metadata expiration check: 0:36:14 ago on Fri 09 Apr 2021 09:46:07 PM GMT.
Dependencies resolved.
=========================================================================================================
 Package                        Arch    Version                                  Repository          Size
=========================================================================================================
Installing:
 containerd.io                  x86_64  1.3.7-3.1.el8                            @commandline        29 M
 docker-ce                      x86_64  3:19.03.13-3.el8                         @commandline        24 M
 docker-ce-cli                  x86_64  1:19.03.13-3.el8                         @commandline        38 M
Installing dependencies:
 container-selinux              noarch  2:2.155.0-1.module+el8.3.1+9659+c1901784 ol8_appstream       51 k
 libcgroup                      x86_64  0.41-19.el8                              ol8_baseos_latest   70 k
 policycoreutils-python-utils   noarch  2.9-9.0.1.el8                            ol8_baseos_latest  251 k
 tar                            x86_64  2:1.30-5.el8                             ol8_baseos_latest  838 k
Enabling module streams:
 container-tools                        ol8                                                              

Transaction Summary
=========================================================================================================
Install  7 Packages

Total size: 93 M
Total download size: 1.2 M
Installed size: 388 M
Downloading Packages:
(1/4): libcgroup-0.41-19.el8.x86_64.rpm         1.6 MB/s |  70 kB     00:00    
(2/4): container-selinux-2.155.0-1.module+el8.3  14 MB/s |  51 kB     00:00    
(3/4): policycoreutils-python-utils-2.9-9.0.1.e 5.0 MB/s | 251 kB     00:00    
(4/4): tar-1.30-5.el8.x86_64.rpm                 15 MB/s | 838 kB     00:00    
--------------------------------------------------------------------------------
Total                                            19 MB/s | 1.2 MB     00:00     
Oracle Linux 8 BaseOS Latest (x86_64)           3.0 MB/s | 3.1 kB     00:00    
Key imported successfully
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Preparing        :                                                        1/1 
  Installing       : docker-ce-cli-1:19.03.13-3.el8.x86_64                  1/7 
  Running scriptlet: docker-ce-cli-1:19.03.13-3.el8.x86_64                  1/7 
  Installing       : tar-2:1.30-5.el8.x86_64                                2/7 
  Running scriptlet: tar-2:1.30-5.el8.x86_64                                2/7 
  Installing       : policycoreutils-python-utils-2.9-9.0.1.el8.noarch      3/7 
  Running scriptlet: container-selinux-2:2.155.0-1.module+el8.3.1+9659+c1   4/7 
  Installing       : container-selinux-2:2.155.0-1.module+el8.3.1+9659+c1   4/7 
  Running scriptlet: container-selinux-2:2.155.0-1.module+el8.3.1+9659+c1   4/7 
  Installing       : containerd.io-1.3.7-3.1.el8.x86_64                     5/7 
  Running scriptlet: containerd.io-1.3.7-3.1.el8.x86_64                     5/7 
  Running scriptlet: libcgroup-0.41-19.el8.x86_64                           6/7 
  Installing       : libcgroup-0.41-19.el8.x86_64                           6/7 
  Running scriptlet: libcgroup-0.41-19.el8.x86_64                           6/7 
  Installing       : docker-ce-3:19.03.13-3.el8.x86_64                      7/7 
  Running scriptlet: docker-ce-3:19.03.13-3.el8.x86_64                      7/7 
  Running scriptlet: container-selinux-2:2.155.0-1.module+el8.3.1+9659+c1   7/7 
  Running scriptlet: docker-ce-3:19.03.13-3.el8.x86_64                      7/7 
  Verifying        : libcgroup-0.41-19.el8.x86_64                           1/7 
  Verifying        : policycoreutils-python-utils-2.9-9.0.1.el8.noarch      2/7 
  Verifying        : tar-2:1.30-5.el8.x86_64                                3/7 
  Verifying        : container-selinux-2:2.155.0-1.module+el8.3.1+9659+c1   4/7 
  Verifying        : containerd.io-1.3.7-3.1.el8.x86_64                     5/7 
  Verifying        : docker-ce-3:19.03.13-3.el8.x86_64                      6/7 
  Verifying        : docker-ce-cli-1:19.03.13-3.el8.x86_64                  7/7 

Installed:
  container-selinux-2:2.155.0-1.module+el8.3.1+9659+c1901784.noarch             
  containerd.io-1.3.7-3.1.el8.x86_64                                            
  docker-ce-3:19.03.13-3.el8.x86_64                                             
  docker-ce-cli-1:19.03.13-3.el8.x86_64                                         
  libcgroup-0.41-19.el8.x86_64                                                  
  policycoreutils-python-utils-2.9-9.0.1.el8.noarch                             
  tar-2:1.30-5.el8.x86_64                                                       

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
  Native Overlay Diff: false
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
 Kernel Version: 5.4.17-2011.7.4.el8uek.x86_64
 Operating System: Oracle Linux Server 8.3
 OSType: linux
 Architecture: x86_64
 CPUs: 2
 Total Memory: 14.61GiB
 Name: ip-10-13-82-26.alation-test.com
 ID: NY4B:TC7A:SSTM:PJKY:HBA2:RMYB:YP6I:5M2Q:R6PZ:Q4XR:IZGA:UR6W
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
5bc214901970        agent               "agent"             1 second ago        Up Less than a second                       agent
2deea8272cbb        ca                  "ca"                3 seconds ago       Up 1 second                                 ca
Last metadata expiration check: 0:37:39 ago on Fri 09 Apr 2021 09:46:07 PM GMT.
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
  Native Overlay Diff: false
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
 Kernel Version: 5.4.17-2011.7.4.el8uek.x86_64
 Operating System: Oracle Linux Server 8.3
 OSType: linux
 Architecture: x86_64
 CPUs: 2
 Total Memory: 14.61GiB
 Name: ip-10-13-82-26.alation-test.com
 ID: NY4B:TC7A:SSTM:PJKY:HBA2:RMYB:YP6I:5M2Q:R6PZ:Q4XR:IZGA:UR6W
 Docker Root Dir: /var/lib/docker
 Debug Mode: false
 Registry: https://index.docker.io/v1/
 Labels:
 Experimental: false
 Insecure Registries:
  127.0.0.0/8
 Live Restore Enabled: false
 Product License: Community Engine

5bc214901970   agent     "agent"   33 seconds ago   Up Less than a second             agent
2deea8272cbb   ca        "ca"      35 seconds ago   Up Less than a second             ca
/sbin/iptables
Last metadata expiration check: 0:38:11 ago on Fri 09 Apr 2021 09:46:07 PM GMT.
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
  Native Overlay Diff: false
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
 Kernel Version: 5.4.17-2011.7.4.el8uek.x86_64
 Operating System: Oracle Linux Server 8.3
 OSType: linux
 Architecture: x86_64
 CPUs: 2
 Total Memory: 14.61GiB
 Name: ip-10-13-82-26.alation-test.com
 ID: NY4B:TC7A:SSTM:PJKY:HBA2:RMYB:YP6I:5M2Q:R6PZ:Q4XR:IZGA:UR6W
 Docker Root Dir: /var/lib/docker
 Debug Mode: false
 Registry: https://index.docker.io/v1/
 Labels:
 Experimental: false
 Insecure Registries:
  127.0.0.0/8
 Live Restore Enabled: false

5bc214901970        agent               "agent"             About a minute ago   Up Less than a second                       agent
2deea8272cbb        ca                  "ca"                About a minute ago   Up Less than a second                       ca
SUCCESS
