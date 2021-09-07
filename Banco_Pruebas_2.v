`timescale 1ns/100ps
`include "mux_conductual.v"
`include "mux_estructural.v"
`include "test_bench_2.v"
module Banco_Pruebas_2;
	wire clk,reset_L,selector,gnd;
    wire [1:0] data_in0,[1:0] data_in1,[1:0] data_out_c,[1:0] data_out_e;
mux_conductual mux_c(/*AUTOINST*/);
mux_conductual mux_e(/*AUTOINST*/);
test_bench_2 tb2(/*AUTOINST*/);
endmodule
