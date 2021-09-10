`timescale 1ns/100ps
`include "flip_flop.v"
`include "mux_1b.v"
`include "mux_2b.v"
`include "test_bench_1.v"
module Banco_Pruebas_1;
	wire A,B,clk,selector,out_mux1b,out_and_gate,out_not_gate,out_or_gate,Q;
    wire [0:1] mux2_out;
    wire [0:1] mux2_in_0;
    wire[0:1] mux2_in_1;
and_gate and_(/*AUTOINST*/
	     // Outputs
	     .out_and_gate		(out_and_gate),
	     // Inputs
	     .A				(A),
	     .B				(B));
or_gate or_(/*AUTOINST*/
	   // Outputs
	   .out_or_gate			(out_or_gate),
	   // Inputs
	   .A				(A),
	   .B				(B));
not_gate not_(/*AUTOINST*/
	     // Outputs
	     .out_not_gate		(out_not_gate),
	     // Inputs
	     .A				(A));
flip_flop ff_(/*AUTOINST*/
	     // Outputs
	     .Q				(Q),
	     // Inputs
	     .D				(D),
	     .clk			(clk));
mux_1b mux1(/*AUTOINST*/
	    // Outputs
	    .out_mux1b			(out_mux1b),
	    // Inputs
	    .selector			(selector),
	    .mux1b_in_0			(A),
	    .mux1b_in_1			(B));
mux_2b mux2(/*AUTOINST*/
	    // Outputs
	    .mux2_out			(mux2_out[0:1]),
	    // Inputs
	    .selector			(selector),
	    .mux2_in_0			(mux2_in_0[0:1]),
	    .mux2_in_1			(mux2_in_1[0:1]));
test_bench_1 tb1(/*AUTOINST*/
		 // Outputs
		 .A			(A),
		 .B			(B),
		 .selector		(selector),
		 .clk			(clk),
		 .mux2_in_0		(mux2_in_0[0:1]),
		 .mux2_in_1		(mux2_in_1[0:1]),
		 // Inputs
		 .out_mux1b		(out_mux1b),
		 .mux2_out		(mux2_out[0:1]),
		 .Q			(Q),
		 .out_or_gate		(out_or_gate),
		 .out_not_gate		(out_not_gate),
		 .out_and_gate		(out_and_gate));
endmodule
