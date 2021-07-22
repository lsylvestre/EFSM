# EFSM


```
$ make
$ ./compile -hsm bench/HSM/fact.hsm
```

```
./compile -gen-cc -hsm bench/HSM/fact.hsm
*** warning: plateform generation ignored.
To generate a platform, please give a CSM description
```

```
$ ./compile -gen-cc -csm bench/CSM/fib.csm
info: platform generated in then folder gen/.
```



````
$./compile -gen-cc -li bench/interop/ref_fact.li
info: platform generated in then folder gen/.
```