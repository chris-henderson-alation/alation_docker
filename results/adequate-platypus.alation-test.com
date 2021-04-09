Last metadata expiration check: 0:44:52 ago on Fri 09 Apr 2021 09:45:58 PM UTC.
Dependencies resolved.
================================================================================
 Package                   Arch       Version            Repository        Size
================================================================================
Installing:
 alation-containerizer     x86_64     1:1.0.0-1          @commandline      69 M
Installing dependencies:
 iptables                  x86_64     1.8.4-7.fc32       fedora           107 k

Transaction Summary
================================================================================
Install  2 Packages

Total size: 69 M
Total download size: 107 k
Installed size: 271 M
Downloading Packages:
iptables-1.8.4-7.fc32.x86_64.rpm                4.1 MB/s | 107 kB     00:00    
--------------------------------------------------------------------------------
Total                                           934 kB/s | 107 kB     00:00     
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Preparing        :                                                        1/1 
  Installing       : iptables-1.8.4-7.fc32.x86_64                           1/2 
  Running scriptlet: iptables-1.8.4-7.fc32.x86_64                           1/2 
  Running scriptlet: alation-containerizer-1:1.0.0-1.x86_64                 2/2 
  Installing       : alation-containerizer-1:1.0.0-1.x86_64                 2/2 
  Running scriptlet: alation-containerizer-1:1.0.0-1.x86_64                 2/2 
  Verifying        : iptables-1.8.4-7.fc32.x86_64                           1/2 
  Verifying        : alation-containerizer-1:1.0.0-1.x86_64                 2/2 

Installed:
  alation-containerizer-1:1.0.0-1.x86_64      iptables-1.8.4-7.fc32.x86_64     

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
 Kernel Version: 5.6.6-300.fc32.x86_64
 Operating System: Fedora 32 (Cloud Edition)
 OSType: linux
 Architecture: x86_64
 CPUs: 2
 Total Memory: 14.89GiB
 Name: ip-10-13-87-85.alation-test.com
 ID: 6EE5:4T44:IBGL:YKKM:V2XB:V57O:6PXV:JWO7:SCG5:D2SO:XNCJ:YUAM
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
a1b172b5d675   agent     "agent"   1 second ago   Up Less than a second             agent
950e39c49c03   ca        "ca"      1 second ago   Up Less than a second             ca
SUCCESS
