# Execute system commands

This module can be used to execute system commands on a remote database server:

* To execute the */bin/ls* command:
```bash
./odat.py oradbg -s $SERVER -d $SID -U $USER -P $PASSWORD --exec /bin/ls
```