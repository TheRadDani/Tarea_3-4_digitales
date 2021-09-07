`include "not_gate.v"
`include "and_gate.v"
`include "or_gate.v"
module mux_1b(input selector,
                input mux1b_in_0,
                input mux1b_in_1,
                output reg out_mux1b;
);
wire n1,n2,n3;
not_gate NOT1b (.selector(selector),.out_mux1b(n1));
and_gate AND1b (.selector(selector),.A(A),.out_mux1b(n2));
and_gate AND2b(.A(n1),.B(B),.out_mux1b(n3));
or_gate OR1b (.A(n2),.A(n3),.out_mux1b(out_mux1b));
endmodule