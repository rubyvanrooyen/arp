#!/bin/bash
# Name: listgroups.bash
# Purpose: List all normal user and system groups in the system. Tested on RHEL / Debian Linux
# Author: Vivek Gite , under GPL v2.0+
# http://www.cyberciti.biz/faq/linux-list-users-command/
# ———————————————————————————–
_l="/etc/login.defs"
_g="/etc/group"

## get mini GID limit ##
l=$(grep "^GID_MIN" $_l)

## get max GID limit ##
l1=$(grep "^GID_MAX" $_l)

## use awk to print if GID >= $MIN and GID = min && $3 = min && $3 <= max ) printf "%-15s %-5s %-10sn", $1, $3, $4 }' "$_g"

echo " "

## use awk to print if GID $MAX ##
echo "—————————–[ System User Groups ]—————————"
printf "%-15s %-5s %-10sn" "Group" "GID" "Logins"
echo "——————————————————————————"
#awk -F':' -v "min=${l##GID_MIN}" -v "max=${l1##GID_MAX}" '{ if ( !( $3 >= min && $3 = min && $3 <= max ) ) printf "%-15s %-5s %-10sn", $1, $3, $4 }' "$_g"
