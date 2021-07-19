all:
	for i in *vhd; do (cp $$i ../rtl/$$i); done
	cat bindings_ext.c >> ../c/platform-bindings.c
	cat platform_ext.c >> ../c/platform.c
	cat platform_ext.h >> ../c/platform.h
	cat simul_ext.c >> ../c/simul.c
	cat simul_ext.h >> ../c/simul.h
	cat platform_ext.ml >> ../ml/platform.ml
	cat platform_ext.mli >> ../ml/platform.mli
