
all:
	mkdir -p ../rtl/misc
	for f in rtl/*.vhd rtl/misc/*.vhd; do (cp -R $${f} "../$${f}"); done
	for c in c/*platform-bindings.c ;  do (cat $${c} >> ../c/platform-bindings.c); done
	for c in c/*platform.c;            do (cat $${c} >> ../c/platform.c); done
	for c in c/*platform.h;            do (cat $${c} >> ../c/platform.h); done
	for c in c/*simul.c;               do (cat $${c} >> ../c/simul.c); done
	for c in c/*simul.h;               do (cat $${c} >> ../c/simul.h); done
	for c in ml/*platform.ml;          do (cat $${c} >> ../ml/platform.ml); done
	for c in ml/*platform.mli;         do (cat $${c} >> ../ml/platform.mli); done

clean:
	rm -f  rtl/*.vhd rtl/misc/*.vhd c/*.c  c/*.h  ml/*.ml  ml/*mli

check:
	ghdl -a -fno-color-diagnostics rtl/misc/*.vhd rtl/*.vhd;
	rm -f *.o *.cf