# Upload a file

This module can be used to upload a file on a remote database server:

* To upload the *test.txt* local file in the */tmp/* folder like *file.txt*:
```bash
./odat.py dbmsxslprocessor -s $SERVER -d $SID -U $USER -P $PASSWORD --putFile /tmp/ file.txt test.txt
```