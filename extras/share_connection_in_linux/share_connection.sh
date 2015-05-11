#!/bin/sh

iptables -A FORWARD -o $1 -i $2 -s 192.168.0.0/24 -m conntrack --ctstate NEW -j ACCEPT
iptables -A FORWARD -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
iptables -t nat -F POSTROUTING
iptables -t nat -A POSTROUTING -o $1 -j MASQUERADE

echo 1 > /proc/sys/net/ipv4/ip_forward
