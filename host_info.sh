#!/bin/bash
SEP="#################################################\n\n"

printf "Kernel version:\n"
uname -a
printf $SEP

printf "Current user:\n"
id
printf $SEP

printf "Working directory:\n"
pwd
printf $SEP


printf "Host specification:\n"
printf "Disk:\n"
df -h
printf "CPU:\n"
lscpu
printf "RAM:\n"
free -g
printf $SEP

printf "Network info:\n"
printf "External ip address:\n"
wget http://ipinfo.io/ip -qO -
printf "Network interface:\n"
ifconfig -a
printf "Active connections:\n"
netstat -tulpn
printf "Route info:\n"
traceroute google.com
printf $SEP

printf "Running services:\n"
service --status-all
printf $SEP

printf "User list:\n"
cat /etc/passwd

