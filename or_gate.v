module or_gate(output out_or_gate, input A, input B);
    //assign #(3.7:3.7:5.5,3.7:3.7:5.5) 
    assign #(1:2:3,1:23) out_or_gate = A | B;
endmodule
//0.90$