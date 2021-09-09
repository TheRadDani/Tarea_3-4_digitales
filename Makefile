all: t1 t2 t4 t5 t6 t7 t8
t1:
	emacs -batch Banco_Pruebas_1.v -f verilog-batch-auto
t2:
	iverilog -o Banco Banco_Pruebas_1.v
t3:
	vvp Banco
t4:
	gtkwave test_1.vcd
t5:
	emacs -batch Banco_Pruebas_2.v -f verilog-batch-auto
t6:
	iverilog -o Banco2 Banco_Pruebas_2.v
t7:
	vvp Banco2
t8:
	gtkwave test_2.vcd
clean:
	rm -r *.vcd .*o Banco Banco2