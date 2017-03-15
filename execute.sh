#!/bin/bash
make

sshpass -p "sfast1" scp /root/cpp/hello root@192.168.104.94:/root  
sshpass -p "sfast1" ssh root@192.168.104.94 /root/hello

if [ $? -ne 0 ] 
then
    echo "fail"
else
    echo "pass"
fi
