#!/bin/bash 
apt-get update
apt-get -y upgrade
apt-get -y install libwebp-dev  libgraphviz-dev  libgif-dev libtiff5-dev libjbig-dev build-essential checkinstall   libx11-dev libxext-dev zlib1g-dev libpng12-dev   libjpeg-dev libfreetype6-dev libxml2-dev  zlib1g-dev  libfreetype6-dev curl sudo zerofree openssh-server vim  htop iftop iotop strace ltrace screen unzip build-essential module-assistant  libpcre3-dev libgd-dev libpng12-dev  libjpeg-dev libssl-dev autoconf libhiredis-dev libnghttp2-dev libcurl4-openssl-dev
apt-get -y autoremove
echo "GRUB_DEFAULT=0
GRUB_TIMEOUT=0
GRUB_DISTRIBUTOR=\"debian vm\"
GRUB_CMDLINE_LINUX_DEFAULT=\"ipv6.disable=1 quiet\"
GRUB_CMDLINE_LINUX=\"ipv6.disable=1 quiet\"
" > /etc/default/grub
update-grub
echo "*   hard rss  unlimited
*   soft rss unlimited
*   soft cpu unlimited
*   hard cpu unlimited
*   hard fsize unlimited
*   soft fsize unlimited
*   soft nofile 1048576
*   hard nofile 1048576
*   soft nproc 1048576
*   hard nproc 1048576
*   soft sigpending 1048576
*   hard sigpending 1048576
" >/etc/security/limits.conf
echo "
net.ipv4.ip_local_port_range = 32768 61000
net.ipv4.tcp_keepalive_time = 512
net.ipv4.tcp_keepalive_probes = 13
net.ipv4.tcp_keepalive_intvl = 32
net.ipv4.tcp_window_scaling = 1
# Enables packet forwarding
net.ipv4.ip_forward = 1
net.ipv4.conf.all.forwarding = 1
net.ipv4.conf.default.forwarding = 1
# net.ipv6.conf.all.forwarding = 1
# net.ipv6.conf.default.forwarding = 1
# Disable IP spoofing protection, turn off source route verification
net.ipv4.conf.all.rp_filter = 0
net.ipv4.conf.default.rp_filter = 0
# disabling SYN cookies to ensure best throughput, for now
net.ipv4.tcp_sack = 0
net.ipv4.tcp_dsack = 0
net.ipv4.tcp_fack = 0
net.ipv4.tcp_syncookies = 0
net.ipv4.tcp_syn_retries = 5
net.ipv4.tcp_synack_retries = 4
net.ipv4.tcp_max_syn_backlog = 65535
# Enables IP source routing
net.ipv4.conf.all.send_redirects = 1
net.ipv4.conf.default.send_redirects = 1
net.ipv4.conf.all.accept_source_route = 1
net.ipv4.conf.default.accept_source_route = 1
# net.ipv6.conf.all.accept_source_route = 1
# net.ipv6.conf.default.accept_source_route = 1
# Controls the System Request debugging functionality of the kernel
kernel.sysrq = 0
# Controls whether core dumps will append the PID to the core filename
# Useful for debugging multi-threaded applications
kernel.core_uses_pid = 1
# Don't ignore directed pings
net.ipv4.icmp_echo_ignore_all = 0
# Controls the maximum size of a message, in bytes
kernel.msgmnb = 65536
# Controls the default maximum size of a message queue
kernel.msgmax = 65536
# specifies the minimum virtual address that a process is allowed to mmap
vm.mmap_min_addr = 4096
# How many times to retry killing an alive TCP connection
net.ipv4.tcp_retries2 = 15
net.ipv4.tcp_retries1 = 3
# maximum number of concurrent network sessions
fs.file-max = 360000
# Set maximum amount of memory allocated to shm to 256MB
kernel.shmmax = 268435456
kernel.shmall = 268435456
# per https://gist.github.com/kfox/1942782
net.ipv4.neigh.default.gc_thresh1 = 4096
net.ipv4.neigh.default.gc_thresh2 = 8192
net.ipv4.neigh.default.gc_thresh3 = 16384
net.ipv4.neigh.default.gc_interval = 5
net.ipv4.neigh.default.gc_stale_time = 120
net.ipv4.neigh.default.gc_stale_time = 120
net.core.netdev_max_backlog = 262144
# net.core.rmem_default = 16777216
# net.core.optmem_max = 2048000
net.core.rmem_max = 108544
net.core.somaxconn = 32784
net.core.wmem_max = 108544
net.ipv4.tcp_fin_timeout = 32
net.ipv4.tcp_max_orphans = 262144
net.ipv4.tcp_timestamps = 0
# tuning TCP for web pdf
net.ipv4.tcp_rmem = 4096 65536 16777216
net.ipv4.tcp_wmem = 4096 16384 16777216
net.ipv4.tcp_tw_reuse = 1
net.ipv4.tcp_max_tw_buckets = 13107200
# Increase TCP queue length
net.ipv4.neigh.default.proxy_qlen = 96
net.ipv4.neigh.default.unres_qlen = 6
# Do a 'modprobe tcp_cubic' first
net.ipv4.tcp_congestion_control = cubic
# cache ssthresh from previous connection
net.ipv4.tcp_no_metrics_save = 0
net.ipv4.tcp_moderate_rcvbuf = 0
# Enable a fix for RFC1337 - time-wait assassination hazards in TCP
net.ipv4.tcp_rfc1337 = 1
# UDP parameters
net.ipv4.udp_mem = 65536 173800 419430
net.ipv4.udp_rmem_min = 65536
net.ipv4.udp_wmem_min = 65536
# Enable ignoring broadcasts request
net.ipv4.icmp_echo_ignore_broadcasts = 1
# Enable bad error message Protection
net.ipv4.icmp_ignore_bogus_error_responses = 1
# Enable ICMP Redirect Acceptance
net.ipv4.conf.all.accept_redirects = 1
net.ipv4.conf.default.accept_redirects = 1
# net.ipv6.conf.all.accept_redirects = 1
# net.ipv6.conf.default.accept_redirects = 1
vm/min_free_kbytes = 65536
# Disable Log Spoofed Packets, Source Routed Packets, Redirect Packets
net.ipv4.conf.all.log_martians = 0
net.ipv4.conf.default.log_martians = 0
# disable ipv6
net.ipv6.conf.all.disable_ipv6 = 1
net.ipv6.conf.default.disable_ipv6 = 1
net.ipv6.conf.lo.disable_ipv6 = 1
# This will ensure that immediately subsequent connections use the new values
net.ipv4.route.flush = 1
# net.ipv6.route.flush = 1
vm.overcommit_memory = 1
" >/etc/sysctl.conf
sysctl -p