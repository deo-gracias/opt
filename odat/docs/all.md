# The first module to use!**

The *all* module allows you to **run all modules** (depends on options that you have purchased).

It is very useful when you want to known **what you can do on a database server** with a valid SID or no, with a valid Oracle account or no.

* For example, the following commands runs **all ODAT modules** on the $HOST Oracle database server listening on the 1521 port:
```bash
./odat.py all -s $HOST -p 1521
```
With these options (_-s_ and _-p_), ODAT will search valid SID  (System ID) in a first step. You can configure some options for configuring methods (i.e. wordlist or bruteforce attack). By default, ODAT will use a big word list and it will do a small bruteforce attack.

If ODAT founds at least one SID (e.g. _ORCL_), it will search valid Oracle accounts. It will do that on each SID found. You can specify some options for credentials (e.g. *--accounts-file*, *--accounts-files*, *--login-as-pwd*).

For each valid account (e.g. _SYS_) on each valid instance (SID), ODAT will give you what each Oracle user can do (e.g. reverse shell, read files, become DBA).

* If you don't known a SID, you can give the number of character maximum, the charset to use for the brute force attack and the file witch contains SID list for the dictionary attack:
```bash
./odat.py all -s 192.168.142.73 -p 1521 --sids-max-size=3 --sid-charset='abc' --accounts-file=accounts.txt
```
If you give a SID, ODAT will not search others valid SID.

* If you known a SID (e.g. *ORCL*), you can use the _-d_ option to give it to ODAT:
```bash
./odat.py all -s $HOST -p $PORT -d ORCL
```

* If you known a SID (ex: *ORCL*) and an account (*SYS/password*), you can give this information to ODAT:
```bash
./odat.py all -s $SERVER -p $PORT -d ORCL -U SYS -P password
```