# Execute remote script and download files

This module can be used to download files or to run script remotely.

__Notes__:

~ It is __not possible to give an argument__ to the executable

~ The executable must be stored on the database server

~ The executable must have the execution bit enabled


* To download the *temp.sh* file stored in */tmp/* in *test.txt*:
```bash
./odat.py externaltable -s $SERVER -d $SID -U $USER -P $PASSWORD --getFile /tmp/ temp.sh test.txt
```

* To run the *temp.sh* executable file stored in the */tmp/* folder of the database server: 
```bash
./odat.py externaltable -s $SERVER -d $SID -U $USER -P $PASSWORD --exec /tmp/ temp.sh
```