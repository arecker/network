#!/usr/bin/env bash
iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT
iptables -t nat -F
iptables -t mangle -F
iptables -F
iptables -X
iptables-restore < /etc/iptables/rules.v4
ip6tables-restore < /etc/iptables/rules.v6
