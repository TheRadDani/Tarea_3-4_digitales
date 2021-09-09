`include "not_gate.v"
`include "and_gate.v"
`include "or_gate.v"
module mux_1b(input selector,
                input mux1b_in_0,
                input mux1b_in_1,
                output out_mux1b);
wire n1,n2,n3;
not_gate not_m1 (.A(selector),.out_not_gate(n1));
and_gate and1_m1 (.A(mux1b_in_0),.B(n1),.out_and_gate(n2));
and_gate and2_m1(.A(mux1b_in_1),.B(selector),.out_and_gate(n3));
or_gate orr_m1 (.A(n2),.B(n3),.out_or_gate(out_mux1b));
endmodule