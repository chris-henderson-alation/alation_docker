Last metadata expiration check: 0:42:13 ago on Fri 09 Apr 2021 09:45:28 PM UTC.
Dependencies resolved.
================================================================================
 Package                Arch   Version            Repository               Size
================================================================================
Installing:
 iptables               x86_64 1.8.4-15.el8_3.3   rhel-8-baseos-rhui-rpms 584 k
Upgrading:
 iptables-libs          x86_64 1.8.4-15.el8_3.3   rhel-8-baseos-rhui-rpms 106 k
Installing dependencies:
 libnetfilter_conntrack x86_64 1.0.6-5.el8        rhel-8-baseos-rhui-rpms  65 k
 libnfnetlink           x86_64 1.0.1-13.el8       rhel-8-baseos-rhui-rpms  33 k
 libnftnl               x86_64 1.1.5-4.el8        rhel-8-baseos-rhui-rpms  83 k

Transaction Summary
================================================================================
Install  4 Packages
Upgrade  1 Package

Total download size: 871 k
Downloading Packages:
(1/5): libnfnetlink-1.0.1-13.el8.x86_64.rpm     307 kB/s |  33 kB     00:00    
(2/5): libnetfilter_conntrack-1.0.6-5.el8.x86_6 583 kB/s |  65 kB     00:00    
(3/5): libnftnl-1.1.5-4.el8.x86_64.rpm          722 kB/s |  83 kB     00:00    
(4/5): iptables-1.8.4-15.el8_3.3.x86_64.rpm     5.4 MB/s | 584 kB     00:00    
(5/5): iptables-libs-1.8.4-15.el8_3.3.x86_64.rp 971 kB/s | 106 kB     00:00    
--------------------------------------------------------------------------------
Total                                           3.5 MB/s | 871 kB     00:00     
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Preparing        :                                                        1/1 
  Installing       : libnfnetlink-1.0.1-13.el8.x86_64                       1/6 
  Running scriptlet: libnfnetlink-1.0.1-13.el8.x86_64                       1/6 
  Installing       : libnetfilter_conntrack-1.0.6-5.el8.x86_64              2/6 
  Running scriptlet: libnetfilter_conntrack-1.0.6-5.el8.x86_64              2/6 
  Upgrading        : iptables-libs-1.8.4-15.el8_3.3.x86_64                  3/6 
  Installing       : libnftnl-1.1.5-4.el8.x86_64                            4/6 
  Running scriptlet: libnftnl-1.1.5-4.el8.x86_64                            4/6 
  Running scriptlet: iptables-1.8.4-15.el8_3.3.x86_64                       5/6 
  Installing       : iptables-1.8.4-15.el8_3.3.x86_64                       5/6 
  Running scriptlet: iptables-1.8.4-15.el8_3.3.x86_64                       5/6 
  Cleanup          : iptables-libs-1.8.4-15.el8.x86_64                      6/6 
  Running scriptlet: iptables-libs-1.8.4-15.el8.x86_64                      6/6 
  Verifying        : libnfnetlink-1.0.1-13.el8.x86_64                       1/6 
  Verifying        : libnetfilter_conntrack-1.0.6-5.el8.x86_64              2/6 
  Verifying        : libnftnl-1.1.5-4.el8.x86_64                            3/6 
  Verifying        : iptables-1.8.4-15.el8_3.3.x86_64                       4/6 
  Verifying        : iptables-libs-1.8.4-15.el8_3.3.x86_64                  5/6 
  Verifying        : iptables-libs-1.8.4-15.el8.x86_64                      6/6 

Upgraded:
  iptables-libs-1.8.4-15.el8_3.3.x86_64                                         

Installed:
  iptables-1.8.4-15.el8_3.3.x86_64   libnetfilter_conntrack-1.0.6-5.el8.x86_64  
  libnfnetlink-1.0.1-13.el8.x86_64   libnftnl-1.1.5-4.el8.x86_64                

Complete!
Last metadata expiration check: 0:42:18 ago on Fri 09 Apr 2021 09:45:28 PM UTC.
Dependencies resolved.
==================================================================================================================
 Package                        Arch    Version                                  Repository                   Size
==================================================================================================================
Installing:
 containerd.io                  x86_64  1.3.7-3.1.el8                            @commandline                 29 M
 docker-ce                      x86_64  3:19.03.13-3.el8                         @commandline                 24 M
 docker-ce-cli                  x86_64  1:19.03.13-3.el8                         @commandline                 38 M
Installing dependencies:
 container-selinux              noarch  2:2.155.0-1.module+el8.3.1+9857+68fb1526 rhel-8-appstream-rhui-rpms   51 k
 libcgroup                      x86_64  0.41-19.el8                              rhel-8-baseos-rhui-rpms      70 k
 policycoreutils-python-utils   noarch  2.9-9.el8                                rhel-8-baseos-rhui-rpms     251 k
Enabling module streams:
 container-tools                        rhel8                                                                     

Transaction Summary
==================================================================================================================
Install  6 Packages

Total size: 92 M
Total download size: 371 k
Installed size: 385 M
Downloading Packages:
(1/3): policycoreutils-python-utils-2.9-9.el8.n 2.1 MB/s | 251 kB     00:00    
(2/3): container-selinux-2.155.0-1.module+el8.3 428 kB/s |  51 kB     00:00    
(3/3): libcgroup-0.41-19.el8.x86_64.rpm         568 kB/s |  70 kB     00:00    
--------------------------------------------------------------------------------
Total                                           2.2 MB/s | 371 kB     00:00     
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Preparing        :                                                        1/1 
  Installing       : docker-ce-cli-1:19.03.13-3.el8.x86_64                  1/6 
  Running scriptlet: docker-ce-cli-1:19.03.13-3.el8.x86_64                  1/6 
  Installing       : policycoreutils-python-utils-2.9-9.el8.noarch          2/6 
  Running scriptlet: container-selinux-2:2.155.0-1.module+el8.3.1+9857+68   3/6 
  Installing       : container-selinux-2:2.155.0-1.module+el8.3.1+9857+68   3/6 
  Running scriptlet: container-selinux-2:2.155.0-1.module+el8.3.1+9857+68   3/6 
  Installing       : containerd.io-1.3.7-3.1.el8.x86_64                     4/6 
  Running scriptlet: containerd.io-1.3.7-3.1.el8.x86_64                     4/6 
  Running scriptlet: libcgroup-0.41-19.el8.x86_64                           5/6 
  Installing       : libcgroup-0.41-19.el8.x86_64                           5/6 
  Running scriptlet: libcgroup-0.41-19.el8.x86_64                           5/6 
  Installing       : docker-ce-3:19.03.13-3.el8.x86_64                      6/6 
  Running scriptlet: docker-ce-3:19.03.13-3.el8.x86_64                      6/6 
  Running scriptlet: container-selinux-2:2.155.0-1.module+el8.3.1+9857+68   6/6 
  Running scriptlet: docker-ce-3:19.03.13-3.el8.x86_64                      6/6 
  Verifying        : container-selinux-2:2.155.0-1.module+el8.3.1+9857+68   1/6 
  Verifying        : libcgroup-0.41-19.el8.x86_64                           2/6 
  Verifying        : policycoreutils-python-utils-2.9-9.el8.noarch          3/6 
  Verifying        : containerd.io-1.3.7-3.1.el8.x86_64                     4/6 
  Verifying        : docker-ce-3:19.03.13-3.el8.x86_64                      5/6 
  Verifying        : docker-ce-cli-1:19.03.13-3.el8.x86_64                  6/6 

Installed:
  container-selinux-2:2.155.0-1.module+el8.3.1+9857+68fb1526.noarch             
  containerd.io-1.3.7-3.1.el8.x86_64                                            
  docker-ce-3:19.03.13-3.el8.x86_64                                             
  docker-ce-cli-1:19.03.13-3.el8.x86_64                                         
  libcgroup-0.41-19.el8.x86_64                                                  
  policycoreutils-python-utils-2.9-9.el8.noarch                                 

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
 Kernel Version: 4.18.0-240.1.1.el8_3.x86_64
 Operating System: Red Hat Enterprise Linux 8.3 (Ootpa)
 OSType: linux
 Architecture: x86_64
 CPUs: 2
 Total Memory: 14.72GiB
 Name: ip-10-13-83-138.alation-test.com
 ID: AWEH:PC4C:BP7L:KZA4:O2GJ:DSIP:KIB6:KPJQ:Z5RV:OHHM:JUBO:Q5IV
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
ce12e458bd39        agent               "agent"             Less than a second ago   Up Less than a second                       agent
d117f179ee56        ca                  "ca"                2 seconds ago            Up 1 second                                 ca
Last metadata expiration check: 0:43:22 ago on Fri 09 Apr 2021 09:45:28 PM UTC.
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
 Kernel Version: 4.18.0-240.1.1.el8_3.x86_64
 Operating System: Red Hat Enterprise Linux 8.3 (Ootpa)
 OSType: linux
 Architecture: x86_64
 CPUs: 2
 Total Memory: 14.72GiB
 Name: ip-10-13-83-138.alation-test.com
 ID: AWEH:PC4C:BP7L:KZA4:O2GJ:DSIP:KIB6:KPJQ:Z5RV:OHHM:JUBO:Q5IV
 Docker Root Dir: /var/lib/docker
 Debug Mode: false
 Registry: https://index.docker.io/v1/
 Labels:
 Experimental: false
 Insecure Registries:
  127.0.0.0/8
 Live Restore Enabled: false
 Product License: Community Engine

ce12e458bd39   agent     "agent"   32 seconds ago   Up Less than a second             agent
d117f179ee56   ca        "ca"      34 seconds ago   Up Less than a second             ca
/sbin/iptables
Last metadata expiration check: 0:43:54 ago on Fri 09 Apr 2021 09:45:28 PM UTC.
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
 Kernel Version: 4.18.0-240.1.1.el8_3.x86_64
 Operating System: Red Hat Enterprise Linux 8.3 (Ootpa)
 OSType: linux
 Architecture: x86_64
 CPUs: 2
 Total Memory: 14.72GiB
 Name: ip-10-13-83-138.alation-test.com
 ID: AWEH:PC4C:BP7L:KZA4:O2GJ:DSIP:KIB6:KPJQ:Z5RV:OHHM:JUBO:Q5IV
 Docker Root Dir: /var/lib/docker
 Debug Mode: false
 Registry: https://index.docker.io/v1/
 Labels:
 Experimental: false
 Insecure Registries:
  127.0.0.0/8
 Live Restore Enabled: false

ce12e458bd39        agent               "agent"             About a minute ago   Up Less than a second                       agent
d117f179ee56        ca                  "ca"                About a minute ago   Up 1 second                                 ca
SUCCESS
