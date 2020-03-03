# To forge http requests

This module is useful when you want to forge HTTP requests. You can send and receive HTTP request from the database server with this module. It can be used to scan ports of a remote server from the database server. It is useful to know which *localhost* ports are listening for example.

* You can scan some ports:
```bash
./odat.py utlhttp -s $SERVER -d $SID -U $USER -P $PASSWORD --scan-ports 127.0.0.1 1521,443,22
./odat.py utlhttp -s $SERVER -d $SID -U $USER -P $PASSWORD --scan-ports 127.0.0.1 20-30
```

* You can send a HTTP request:
```bash
echo 'GET / HTTP/1.0\n' > ./temp.txt;
./odat.py utlhttp -s $SERVER -d $SID -U $USER -P $PASSWORD --send google.com 80 temp.txt ;
rm ./temp.txt
```