all: t2 t3 
#t1:
#	emacs -batch test_bench_1.v -f verilog-batch-auto
t2:
	iverilog -o Banco test_bench_1.v
t3:
	vvp Banco
#t4:
#	gtkwave test_1.vcd
#t5:
#	emacs -batch test_bench_2.v -f verilog-batch-auto
#t6:
#	iverilog -o Banco2 test_bench_2.v
#t7:
#	vvp Banco2
#t8:
#	gtkwave test_2.vcd
clean:
	rm -r *.vcd .*o Banco Banco2