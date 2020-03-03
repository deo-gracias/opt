# Unwrapp PL/SQL code

This module allows you to unwrap PL/SQL source code wrapped (Oracle 10, 11 and 12).

* To unwrap PL/SQL source code from a local file:
```bash
./odat.py unwrapper --file code.txt
```

An example of file:
```bash
cat code.txt
a000000
1
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
d
140 df
dpvm2y/8e4GQNNJr8ynRmaVUXCcwg5BK7Z7WZy9GXsE+YUtphQwUvwrjGSgSmOM9b/RUVKIU
[...]
2A==
```

* To unwrap PL/SQL source code from a remote database object (ex: package):
```bash
./odat.py unwrapper -s $SERVER -d $ID -U $USER -P $PASSWORD --object-name 'WRAPPED_OBJECT'
```

You can specify the object type with the *--object-type* if you want:
```bash
./odat.py unwrapper -s $SERVER -d $ID -U $USER -P $PASSWORD --object-name 'WRAPPED_OBJECT' --object-type 'PROCEDURE'
```

* To see the wrapped PL/SQL source code manually, the following SQL request can be used:
```sql
SELECT text FROM all_source WHERE name='WRAPPED_OBJECT' ORDER BY line
```
