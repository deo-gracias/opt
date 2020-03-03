# Download and upload files 

This module can be used to upload a file, download a file or delete a remote file.



* To download the */etc/passwd* file:
```bash
./odat.py utlfile -s $SERVER -d $SID -U $USER -P $PASSWORD --test-module --getFile /etc/ passwd passwd.txt
```

* To upload the *test.txt* file:
```bash
./odat.py utlfile -s $SERVER -d $SID -U $USER -P $PASSWORD --putFile /tmp/ file.txt test.txt
```

* To delete the *file.txt* file stored in */tmp/*:
```bash
./odat.py utlfile -s $SERVER -d $SID -U $USER -P $PASSWORD --removeFile /tmp/ file.txt
```