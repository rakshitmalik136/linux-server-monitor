#!/bin/bash

echo "===== SERVER HEALTH REPORT ====="
echo "Date: $(date)"
echo ""

echo "System Uptime:"
uptime
echo ""

echo "CPU Usage:"
top -bn1 | grep "Cpu(s)"
echo ""

echo "Memory Usage:"
free -h
echo ""

echo "Disk Usage:"
df -h
echo ""

echo "Running Services:"
systemctl list-units --type=service --state=running | head -10

MEM=$(free | awk '/Mem/ {printf("%.2f"), $3/$2 * 100}')
echo "Memory Usage: $MEM %"

if (( $(echo "$MEM > 80" | bc -l) )); then
   echo "WARNING: High Memory Usage!"
fi
