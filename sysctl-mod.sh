#! /bin/bash
#
# disable ARP flux config

path='/proc/sys/net/ipv4/conf'

IFCE="all p4p1 p6p1"

for ifce in $IFCE
do
    echo 2 > $path/$ifce/arp_announce
    echo 1 > $path/$ifce/arp_filter
    echo 1 > $path/$ifce/arp_ignore
    echo 0 > $path/$ifce/rp_filter

    echo 0 > $path/$ifce/arp_filter
done

sysctl-get.sh

# -fin-
