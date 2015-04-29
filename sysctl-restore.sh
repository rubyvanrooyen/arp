#! /bin/bash
#
# restores ARP config to defaults

path='/proc/sys/net/ipv4/conf'

IFCE="all p4p1 p6p1"

for ifce in $IFCE
do
    echo 0 > $path/$ifce/arp_announce
    echo 0 > $path/$ifce/arp_filter
    echo 0 > $path/$ifce/arp_ignore
    echo 1 > $path/$ifce/rp_filter
done

./sysctl-get.sh

# -fin-
