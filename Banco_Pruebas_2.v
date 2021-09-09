`timescale 1ns/100ps
`include "mux_conductual.v"
`include "mux_estructural.v"
`include "test_bench_2.v"
module Banco_Pruebas_2;
wire clk,reset_L,selector,gnd;
wire [1:0] data_in0;
wire [1:0] data_in1;
wire [1:0] data_out_c;
wire [1:0] data_out_e;
mux_conductual mux_c(/*AUTOINST*/
                        // Outputs
				       .data_out_c	(data_out_c[1:0]),
				       // Inputs
				       .clk		    (clk),
				       .reset_L		(reset_L),
				       .selector	(selector),
				       .data_in0	(data_in0[1:0]),
				       .data_in1	(data_in1[1:0]));
mux_estructural mux_e(/*AUTOINST*/
                    // Outputs
					  .data_out_e		(data_out_e[1:0]),
					  // Inputs
					  .clk			(clk),
					  .reset_L		(reset_L),
					  .selector		(selector),
					  .gnd		(gnd[1:0]),
					  .data_in0		(data_in0[1:0]),
					  .data_in1		(data_in1[1:0]));
test_bench_2 tb2(/*AUTOINST*/
                    // Outputs
				   .clk			    (clk),
				   .reset_L		    (reset_L),
				   .selector		(selector),
				   .data_in0		(data_in0[1:0]),
				   .data_in1		(data_in1[1:0]),
				   .gnd			(gnd[1:0]),
				   // Inputs
				   .data_out_e (data_out_e[1:0]),
				   .data_out_c	(data_out_c[1:0]));
endmodule
