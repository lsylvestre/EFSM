# EFSM



### Usage
```
$ make
$ ./compile -li -gen-cc bench/catalog/*
info: platform  "array_sum"  generated in folder gen/.
info: platform  "fact"  generated in folder gen/.
info: platform  "fib"  generated in folder gen/.
info: platform  "gcd"  generated in folder gen/.
info: platform  "id"  generated in folder gen/.
info: platform  "inc_ref"  generated in folder gen/.
info: platform  "list_length"  generated in folder gen/.
info: platform  "list_sum"  generated in folder gen/.
info: platform  "max4"  generated in folder gen/.
info: platform  "rev_array"  generated in folder gen/.
$ make check-cc
(cd gen; make check)
ghdl -a -fno-color-diagnostics rtl/misc/*.vhd rtl/*.vhd;
rm -f *.o *.cf
$
```

```
./compile -gen-cc -hsm bench/HSM/fact.hsm
*** warning: plateform generation ignored.
To generate a platform, please give a CSM or LI description
```

```
$ ./compile -gen-cc -csm bench/CSM/fib.csm
info: platform generated in then folder gen/.
```



````
$./compile -gen-cc -li bench/interop/ref_fact.li
info: platform generated in then folder gen/.
```