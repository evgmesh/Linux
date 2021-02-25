#!/bin/bash
#Group 6
#step2

echo -n "Tools:
1> Long file listing of the current working directory
2> How long the system has been on
3> Memory usage and how much is free
4> Disk usage (system)
5> Disk usage (cwd)
Selection: "
read selection
case $selection in
  1) ls -l  ;;
  2) echo -n "Your system is " ; uptime -p  ;;
  3) echo "Used and free memory space: " ; vmstat -s | grep 'used\|free' ;;
  4) echo -n "Whole system disk space usage is: " ; df -h --total | grep total | awk '{ print $3 }' ;;
  	
  5) echo -n "Current working directory disk space usage: " ; du -csh $PWD 2>/dev/null | grep total  ;;
  *) echo "Invalid command" ;;
esac

