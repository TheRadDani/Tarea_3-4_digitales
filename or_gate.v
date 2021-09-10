module or_gate(input A, input B,output out_or_gate);
    //assign #(3.7:3.7:5.5,3.7:3.7:5.5) 
    assign #(1:2:3,1:2:3)
    out_or_gate = A | B;
endmodule
//0.90$