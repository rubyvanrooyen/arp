#! /bin/bash
#
# displays the current ARP config

path='/proc/sys/net/ipv4/conf'

IFCE="all p4p1 p6p1"

for ifce in $IFCE
do
    echo $ifce
    echo -n "arp_announce	"
    cat $path/$ifce/arp_announce
    echo -n "arp_filter	"
    cat $path/$ifce/arp_filter
    echo -n "arp_ignore	"
    cat $path/$ifce/arp_ignore
    echo -n "rp_filter	"
    cat $path/$ifce/rp_filter
done

# -fin-
