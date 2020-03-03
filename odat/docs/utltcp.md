# To scan ports

This module can be used to scan ports and it can be used to forge and send TCP packet (ex: HTTP request).
 
* To scan ports:
```bash
./odat.py utltcp -s $SERVER -d $SID -U $USER -P $PASSWORD --scan-ports 127.0.0.1 1521,443,22
```

* To forge a HTTP GET request:
```bash
echo 'GET / HTTP/1.0\n\n' > ./temp.txt;
./odat.py utltcp -s $SERVER -d $SID -U $USER -P $PASSWORD --send-packet 127.0.0.1 80 ./temp.txt
rm ./temp.txt
```