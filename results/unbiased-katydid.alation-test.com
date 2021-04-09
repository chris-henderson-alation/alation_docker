Last metadata expiration check: 0:43:20 ago on Fri 09 Apr 2021 09:46:43 PM UTC.
Dependencies resolved.
================================================================================
 Package                    Arch       Version           Repository        Size
================================================================================
Installing:
 alation-containerizer      x86_64     1:1.0.0-1         @commandline      69 M
Installing dependencies:
 iptables                   x86_64     1.8.3-7.fc31      updates          466 k
 libnetfilter_conntrack     x86_64     1.0.7-3.fc31      fedora            63 k
 libnfnetlink               x86_64     1.0.1-16.fc31     fedora            30 k

Transaction Summary
================================================================================
Install  4 Packages

Total size: 70 M
Total download size: 559 k
Installed size: 274 M
Downloading Packages:
(1/3): libnfnetlink-1.0.1-16.fc31.x86_64.rpm    489 kB/s |  30 kB     00:00    
(2/3): libnetfilter_conntrack-1.0.7-3.fc31.x86_ 1.0 MB/s |  63 kB     00:00    
(3/3): iptables-1.8.3-7.fc31.x86_64.rpm         4.4 MB/s | 466 kB     00:00    
--------------------------------------------------------------------------------
Total                                           1.8 MB/s | 559 kB     00:00     
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Preparing        :                                                        1/1 
  Installing       : libnfnetlink-1.0.1-16.fc31.x86_64                      1/4 
  Installing       : libnetfilter_conntrack-1.0.7-3.fc31.x86_64             2/4 
  Installing       : iptables-1.8.3-7.fc31.x86_64                           3/4 
  Running scriptlet: iptables-1.8.3-7.fc31.x86_64                           3/4 
  Running scriptlet: alation-containerizer-1:1.0.0-1.x86_64                 4/4 
  Installing       : alation-containerizer-1:1.0.0-1.x86_64                 4/4 
  Running scriptlet: alation-containerizer-1:1.0.0-1.x86_64                 4/4 
  Verifying        : iptables-1.8.3-7.fc31.x86_64                           1/4 
  Verifying        : libnetfilter_conntrack-1.0.7-3.fc31.x86_64             2/4 
  Verifying        : libnfnetlink-1.0.1-16.fc31.x86_64                      3/4 
  Verifying        : alation-containerizer-1:1.0.0-1.x86_64                 4/4 

Installed:
  alation-containerizer-1:1.0.0-1.x86_64      iptables-1.8.3-7.fc31.x86_64      
  libnetfilter_conntrack-1.0.7-3.fc31.x86_64  libnfnetlink-1.0.1-16.fc31.x86_64 

Complete!
Client:
 Context:    default
 Debug Mode: false

Server:
 Containers: 0
  Running: 0
  Paused: 0
  Stopped: 0
 Images: 0
 Server Version: 20.10.5
 Storage Driver: overlay2
  Backing Filesystem: xfs
  Supports d_type: true
  Native Overlay Diff: true
 Logging Driver: json-file
 Cgroup Driver: systemd
 Cgroup Version: 2
 Plugins:
  Volume: local
  Network: bridge host ipvlan macvlan null overlay
  Log: awslogs fluentd gcplogs gelf journald json-file local logentries splunk syslog
 Swarm: inactive
 Runtimes: io.containerd.runtime.v1.linux runc io.containerd.runc.v2
 Default Runtime: runc
 Init Binary: docker-init
 containerd version: 269548fa27e0089a8b8278fc4fc781d7f65a939b
 runc version: 12644e614e25b05da6fd08a38ffa0cfe1903fdec
 init version: de40ad0
 Security Options:
  seccomp
   Profile: default
  cgroupns
 Kernel Version: 5.5.13-200.fc31.x86_64
 Operating System: Fedora 31 (Thirty One)
 OSType: linux
 Architecture: x86_64
 CPUs: 2
 Total Memory: 14.89GiB
 Name: ip-10-13-85-63.alation-test.com
 ID: Q2HN:RYTN:TXCV:P6RW:ZXIL:MGZC:LVJA:RC3J:QYK6:LNH5:BSZY:RNPR
 Docker Root Dir: /var/lib/docker
 Debug Mode: false
 Registry: https://index.docker.io/v1/
 Labels:
 Experimental: false
 Insecure Registries:
  127.0.0.0/8
 Live Restore Enabled: false
 Product License: Community Engine

Verifying...                          ########################################
Preparing...                          ########################################
Updating / installing...
alation-hydra-1.0.2.132563-1.0        ########################################
72c31a70d597   agent     "agent"   1 second ago    Up Less than a second             agent
b318b71b6e3f   ca        "ca"      2 seconds ago   Up 1 second                       ca
SUCCESS
