#!/bin/bash
iptables -t nat -A PREROUTING -d 192.168.1.201 -j DNAT --to-destination 192.168.2.201
iptables -t nat -A POSTROUTING -d 192.168.2.201 -j SNAT --to 192.168.1.201