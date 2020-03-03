# Forge HTTP requests also

This module can be used to scan ports and to forge some HTTP requests:

* To scan ports:
```bash
/odat.py httpuritype -s $SERVER -d $SID -U $USER -P $PASSWORD --scan-ports 127.0.0.1 1521,443,22
./odat.py httpuritype -s $SERVER -d $SID -U $USER -P $PASSWORD --scan-ports 127.0.0.1 20-30
```

* You can send a GET request:
```bash
./odat.py httpuritype -s $SERVER -d $SID -U $USER -P $PASSWORD --url 127.0.0.1:80
```
