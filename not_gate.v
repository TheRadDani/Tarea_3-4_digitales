module not_gate(input A,output out_not_gate);
    //assign #() 
    assign #(1:2:3,1:2:3) out_not_gate = ~A;
endmodule
/*2.20$
https://www.microjpm.com/products/cd4049-buffer-conversor/
not(out_not_gate,A)*/