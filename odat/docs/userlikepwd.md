# Test each username as password

When you are authenticated, this module takes all Oracle users and tries to connect to the database using the username as password (lowercase & uppercase value).

For example, if the database has 2 Oracle users (_SYS_, _SYSTEM_), this module will try to connect to the database with these credentials: SYS/SYS, SYS/sys, SYSTEM/SYSTEM and SYSTEM/system.

This module **is started automatically when the _all_ module is launched** with a valid Oracle account (_-U_ and _-P_ options).

Here is an example:
```bash
./odat.py  userlikepwd  -s $HOST -d $SID -U $LOGIN -P $PASSWORD --run
```

