module or_gate(output reg out_or_gate, input A, input B);
    assign #(3.7:3.7:5.5,3.7:3.7:5.5) 
    or(out_or_gate,A,B);
endmodule
//0.90$