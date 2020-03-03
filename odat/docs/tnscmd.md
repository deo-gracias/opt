# Get information without authentication

This module can be used to communicate directly with the TNS listener without authentication.

* If you would like to know the alias defined on the TNS listener, you could use this following command:
```bash
./odat.py tnscmd -s $SERVER -p $PORT --ping
```

* To know the remote database version, the following command can be used:
```bash
./odat.py tnscmd -s $SERVER -p $PORT --version
```

* To know the remote database status, the following command can be used:
```bash
./odat.py tnscmd -s $SERVER -p $PORT --status
```
