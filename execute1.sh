main(){
make
pwd
echo $localDIR
remoteDIR="/root"
echo $remoteDIR
sshpass -p "sfast1" scp "$localDIR/hello" root@192.168.104.94:/root
sshpass -p "sfast1" ssh root@192.168.104.94 "$remoteDIR/hello"

if [ $? -ne 0 ]
then
    return 1
else
    return 0
fi
}

main
