# no-connect
A script for iptables to drop connections from and to unwanted IPs

# Source
The Code is based on the work of https://github.com/trick77/ipset-blacklist

## What it does
We collect several bad IPs from different sources and create firewall rules for iptables so these IPs are not allowed to connect to us and also outgoing traffic to these IPs is denied.
