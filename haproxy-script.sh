#!/usr/bin/env bash
sudo apt install -y haproxy
cat << EOF >> /etc/haproxy/haproxy.cfg
global
        log /dev/log   local0
        log 127.0.0.1   local1 notice
        maxconn 4096
        user haproxy
        group haproxy
        daemon

defaults
        log     global
        mode    http
        option  httplog
        option  dontlognull
        retries 3
        option redispatch
        maxconn 2000
        contimeout     5000
        clitimeout     50000
        srvtimeout     50000

listen webfarm 
bind 0.0.0.0:80
    mode http
    stats enable
    stats uri /haproxy?stats
    balance roundrobin
    option httpclose
    option forwardfor
    server webserver01 192.168.33.11:80 check
    server webserver02 192.168.33.12:80 check
EOF
sudo service haproxy restart
