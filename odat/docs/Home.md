This wiki explains how to use __ODAT__ (**O**racle **D**atabase **A**ttacking **T**ool) during security assessments.

Explanations and examples are organized by ODAT module in this Wiki (see on the right).

The _-h_ option can be used to get the ODAT help menu:
```bash
./odat.py -h
```

The _all_ module is the __first module that should be used__ when you meet an Oracle Database.
For example, you can use this command for starting:
```bash
./odat.py all -s 192.168.1.254 -p 1521
```

You can give the SID if you know it:
```bash
./odat.py all -s 192.168.1.254 -p 1521 -d ORCL
```

If you know a valid account, you can give it to this module:
```bash
./odat.py all -s 192.168.1.254 -p 1521 -d ORCL -U SYS -P password
```

See [**all**](https://github.com/quentinhardy/odat/wiki/all) for more details about this module.

For each module (i.e. _sidguesser_), you can use _-v_, _-vv_ or _-vvv_ for enabling verbosity and understanding how or what the module is doing.  For example:
```bash
./odat.py all -s 192.168.1.254 -vvv
```

Before to use a specific command of a module, the _--test-module_ should be used first for knowing if you can use it (target is vulnerable, Oracle account has enough privileges, etc). For example:
```bash
./odat.py tnspoison -s 192.168.1.254 -p 1521 -d ORCL --test-module
```
