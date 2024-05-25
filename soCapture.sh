#!/bin/bash 
tcpdump -w ..1
nc -w 3 192.168.1.101 443 < ..1
