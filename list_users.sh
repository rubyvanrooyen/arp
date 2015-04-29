#!/bin/bash
# Name: listusers.bash
# Purpose: List all normal user and system accounts in the system. Tested on RHEL / Debian Linux
# Author: Vivek Gite , under GPL v2.0+
# http://www.cyberciti.biz/faq/linux-list-users-command/
# ———————————————————————————–
_l="/etc/login.defs"
_p="/etc/passwd"

## get mini UID limit ##
l=$(grep "^UID_MIN" $_l)

## get max UID limit ##
l1=$(grep "^UID_MAX" $_l)

## use awk to print if UID >= $MIN and UID = min && $3 = min && $3 <= max && $7 != "/sbin/nologin" ) printf "%-15s %-5s %-5s %-25s %-10sn", $1, $3, $4, $6, $7 }' "$_p"

echo " "

## use awk to print if UID $MAX ##
echo "—————————-[ System User Accounts ]—————————"
printf "%-15s %-5s %-5s %-25s %-10sn" "Login" "UID" "GID" "Home" "Shell"
echo "——————————————————————————"
#awk -F':' -v "min=${l##UID_MIN}" -v "max=${l1##UID_MAX}" '{ if ( !( $3 >= min && $3 = min && $3 <= max && $7 != "/sbin/nologin" ) ) printf "%-15s %-5s %-5s %-25s %-10sn", $1, $3, $4, $6, $7 }' "$_p"
