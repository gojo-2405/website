#!/bin/sh

while true
do
  echo "===== PROCESS SNAPSHOT $(date -u) ====="
  echo "TOP CPU PROCESSES"
  ps -eo pid,ppid,lstart,etime,%cpu,%mem,comm,args --sort=-%cpu | head -20

  echo "TOP MEMORY PROCESSES"
  ps -eo pid,ppid,lstart,etime,%cpu,%mem,comm,args --sort=-%mem | head -20

  echo "===== END SNAPSHOT ====="
  sleep 10
done
