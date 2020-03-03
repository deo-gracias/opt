# Search in column names

This module is useful for searching in column names quickly.

* To get column names which contains *password* *like* (ex: passwd, password, motdepasse, clave):
```bash
./odat.py search -s $SERVER -d $SID -U $USER -P $PASSWORD --pwd-column-names
```
__Columns which do not contain data are not output by default__. To see columns which do not contain data, you should use the *--show-empty-columns* option:
```bash
./odat.py search -s $SERVER -d $SID -U $USER -P $PASSWORD --pwd-column-names --show-empty-columns
```

* You can search patterns in column names manually (*--columns* option). To search column names which contain the pattern '%PASSWORD%':
```bash
./odat.py search -s $SERVER -d $SID -U $USER -P $PASSWORD --columns '%password%'
```

* To search column names which contain password like patterns:
```bash
./odat.py search -s $SERVER -d $SID -U $USER -P $PASSWORD --columns '%password%'
```