# Search valid Oracle accounts remotely

This module has been created for trying to guess Oracle users' passwords only.
You must have a valid SID for running this module.

* The following command tries to connect to the database using the accounts/accounts.txt file by default:
```bash
./odat.py passwordguesser -s $SERVER -d $SID
```

This default file (_accounts.txt_) does not contain several passwords for a specific account. Useful when you don't want lock Oracle accounts.

* If you want to try each Oracle username with multiple passwords:
```bash
./odat.py passwordguesser -s $MYSERVER -p $PORT --accounts-file accounts_multiple.txt
```

* If you want to use your login file and password file:
```bash
./odat.py passwordguesser -s $MYSERVER -p $PORT --accounts-files accounts/logins.txt accounts/pwds.txt
```

To be sure that each login will be tested as a password (uppercase and lowercase), the option _--login-as-pwd_ can be used.