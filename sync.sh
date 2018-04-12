scp -r $1 root@172.21.0.3:$1
echo -e "slave1 sync finished"
scp -r $1 root@172.21.0.4:$1
echo -e "slave2 sync finished"
scp -r $1 root@172.21.0.5:$1
echo -e "slave3 sync finished"
scp -r $1 root@172.21.0.6:$1
echo -e "slave4 sync finished"
