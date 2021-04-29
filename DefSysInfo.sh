#!/bin/bash
# Defining System Info
# DefSysInfo.sh

#TASK: Current user @ hostname
echo -n "Current Host:"
echo "$USER@$HOSTNAME"

#TASK: Current IP Address & Subnet
echo -n "Network Info:"
ifconfig | egrep 'inet|netmask'

#TASK: CPU Name & Speed
echo -n "CPU Info:"
lscpu | grep 'Model name'
lscpu | grep 'CPU MHz'

#TASK: Free & Total Memory
echo -n "RAM Info:"
grep -m1 'MemFree' /proc/meminfo
grep -m1 'MemTotal' /proc/meminfo

#TASK: Free & Total Swap Space
echo -n "SWAP Info:"
grep -m1 'SwapFree' /proc/meminfo
grep -m1 'SwapTotal' /proc/meminfo

#TASK: Free & Total Space on ext4 & XFS partitions
echo -n "Partition (ext4 & XFS) Info:"
df -t ext4
df -t xfs

exit 0

