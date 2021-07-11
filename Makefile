CC=ocamlc -g
EXE=compile

all:
	$(CC) -c ast.ml
	menhir parser.mly
	$(CC) -c parser.mli
	$(CC) -c parser.ml
	ocamllex lexer.mll
	$(CC) -c lexer.ml
	$(CC) -c typing_efsm.ml
	$(CC) -c efsm2vhdl.ml
	$(CC) -c hsm2efsm.ml
	$(CC) -c psm2hsm.ml
	$(CC) -c csm2psm.ml
	$(CC) -c main.ml
	
	$(CC) -o $(EXE) ast.cmo lexer.cmo \
	 parser.cmo typing_efsm.cmo efsm2vhdl.cmo hsm2efsm.cmo psm2hsm.cmo csm2psm.cmo main.cmo

FILE=
DST=bench/dst/$(basename $(notdir $(FILE))).vhdl
test:
	./compile $(FILE) > $(DST) ; ghdl -a $(DST)

clean:
	rm -f `find . -name "*.cmo"`
	rm -f `find . -name "*.cmi"`
	rm -f $(EXE) compile