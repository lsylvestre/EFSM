CAMLC=ocamlc
CAMLLEX=ocamllex
MENHIR=menhir --explain
CAMLDEP=ocamldep

EXE=compile
PCF_FLAGS=

INCLUDES=-I src -I src/target -I src/syntax -I src/typing \
         -I src/translators  -I src/dsl 

OBJS=src/misc.cmo\
	 src/syntax/types.cmo\
	 src/syntax/ast.cmo\
	 src/syntax/pprint_ast.cmo\
	 src/syntax/parser.cmo\
	 src/syntax/lexer.cmo\
	 src/syntax/variables.cmo\
	 src/typing/typing_efsm.cmo\
	 src/translators/efsm2vhdl.cmo\
	 src/translators/fcf2efsm.cmo\
	 src/translators/fcf_rename.cmo\
	 src/translators/li2fcf.cmo\
	 src/dsl/distribute.cmo\
	 src/dsl/caml_interop.cmo\
	 src/target/gen_hw_tcl.cmo\
	 src/target/gen_platform.cmo\
	 src/sem/sem_efsm.cmo\
	 src/main.cmo

SRCS=`find src -name "*.ml*"`
all: prepare $(OBJS)
	$(CAMLC) $(FLAGS) $(INCLUDES) -o $(EXE) $(OBJS)

.SUFFIXES: .mll .mly .ml .mli .cmo .cmi 

.ml.cmo:
	$(CAMLC) $(INCLUDES) $(FLAGS) -c $<

.mli.cmi:
	$(CAMLC) $(INCLUDES) $(FLAGS) -c $<

.mly.ml:
	$(MENHIR) $<

.mll.ml:
	$(CAMLLEX) $<

depend:
	$(CAMLDEP) $(INCLUDES) $(SRCS) > .depend

include .depend

prepare:
	mkdir -p gen/rtl/misc
	mkdir -p gen/c
	mkdir -p gen/ml
	mkdir -p gen/apps


FILE=
OPT=
DST=bench/dst/$(basename $(notdir $(FILE))).vhdl
test:
	./compile $(FILE) > $(DST) ; ghdl -a $(DST)

run:
	echo "-- ./compile $(OPT) $(FILE)\n" > $(FILE).vhdl
	./compile $(OPT) $(FILE) >> $(FILE).vhdl

clean:	clean-cc
	rm -f `find . -name "*.cmo"`
	rm -f `find . -name "*.cmi"`
	rm -f $(EXE)
	
clean-cc:
	(cd gen; make clean)

check-cc:
	(cd gen; make check)
