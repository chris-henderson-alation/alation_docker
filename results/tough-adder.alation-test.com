Last metadata expiration check: 0:45:40 ago on Fri 09 Apr 2021 09:45:53 PM UTC.
Dependencies resolved.
================================================================================
 Package                   Arch       Version            Repository        Size
================================================================================
Installing:
 alation-containerizer     x86_64     1:1.0.0-1          @commandline      69 M
Installing dependencies:
 iptables                  x86_64     1.8.5-3.fc33       fedora           108 k

Transaction Summary
================================================================================
Install  2 Packages

Total size: 69 M
Total download size: 108 k
Installed size: 271 M
Downloading Packages:
iptables-1.8.5-3.fc33.x86_64.rpm                3.3 MB/s | 108 kB     00:00    
--------------------------------------------------------------------------------
Total                                           937 kB/s | 108 kB     00:00     
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Preparing        :                                                        1/1 
  Installing       : iptables-1.8.5-3.fc33.x86_64                           1/2 
  Running scriptlet: iptables-1.8.5-3.fc33.x86_64                           1/2 
  Running scriptlet: alation-containerizer-1:1.0.0-1.x86_64                 2/2 
  Installing       : alation-containerizer-1:1.0.0-1.x86_64                 2/2 
  Running scriptlet: alation-containerizer-1:1.0.0-1.x86_64                 2/2 
  Verifying        : iptables-1.8.5-3.fc33.x86_64                           1/2 
  Verifying        : alation-containerizer-1:1.0.0-1.x86_64                 2/2 

Installed:
  alation-containerizer-1:1.0.0-1.x86_64      iptables-1.8.5-3.fc33.x86_64     

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
  Backing Filesystem: extfs
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
 Runtimes: io.containerd.runc.v2 io.containerd.runtime.v1.linux runc
 Default Runtime: runc
 Init Binary: docker-init
 containerd version: 269548fa27e0089a8b8278fc4fc781d7f65a939b
 runc version: 12644e614e25b05da6fd08a38ffa0cfe1903fdec
 init version: de40ad0
 Security Options:
  seccomp
   Profile: default
  cgroupns
 Kernel Version: 5.8.15-301.fc33.x86_64
 Operating System: Fedora 33 (Cloud Edition)
 OSType: linux
 Architecture: x86_64
 CPUs: 2
 Total Memory: 14.89GiB
 Name: ip-10-13-94-169.alation-test.com
 ID: ZIT3:Z5M4:CXEK:MZUL:KVN3:AP5G:55GG:7QSA:UOCJ:BNVM:QBHO:JLXJ
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
eba8f758aec6   agent     "agent"   1 second ago   Up Less than a second             agent
c7886ec9e49a   ca        "ca"      1 second ago   Up 1 second                       ca
SUCCESS
