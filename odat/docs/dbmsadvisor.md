# Upload files

This module can be used to upload a file on the server.

* To upload the *test.txt* local file in the */tmp/* folder like *file.txt*:
```bash
./odat.py dbmsadvisor -s $SERVER -d $SID -U $USER -P $PASSWORD --putFile /tmp/ file.txt ./test.txt
```