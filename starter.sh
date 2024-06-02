#!/bin/bash
clear
while true; do 
read -p "inter the target ip : " tIp
#if [[ $tIp =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]]; then
#	break
#fi
read -p "inter the port for send file : " port
read -p "inter the reciver name : " rName
read -p "inter the time for recive (N for no time) : " rtime
done

