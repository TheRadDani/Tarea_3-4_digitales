`timescale 1ns/100ps
`include "flip_flop.v"
`include "mux_1b.v"
`include "mux_2b.v"
`include "test_bench_1"
module Banco_Pruebas_1;
	wire A,B,clk,selector,out_mux1b,out_and_gate,out_not_gate,out_or_gate,Q;
    wire [0:1] mux2_out,[0:1] mux2_in_0,[0:1] mux2_in_1;
and_gate and(/*AUTOINST*/);
or_gate or(/*AUTOINST*/);
not_gate not(/*AUTOINST*/);
flip_flop ff(/*AUTOINST*/);
mux_1b mux1(/*AUTOINST*/);
mux_2b mux2(/*AUTOINST*/);
test_bench_1 tb1(/*AUTOINST*/);
endmodule