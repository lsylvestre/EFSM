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
	 src/translators/hsm2efsm.cmo\
	 src/translators/psm2hsm.cmo\
	 src/translators/csm2psm.cmo\
	 src/translators/li2csm.cmo\
	 src/dsl/inline.cmo\
	 src/dsl/caml_interop.cmo\
	 src/target/gen_platform.cmo\
	 src/main.cmo

SRCS=`find src -name "*.ml*"`
all: $(OBJS)
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
	rm -f gen/*.vhd gen/*.c gen/*.h gen/*.ml gen/*.mli
