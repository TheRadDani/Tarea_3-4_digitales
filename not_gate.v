module not_gate(output reg out_not_gate, input A);
    assign #(60:60:120,70:70:140) 
    not(out_not_gate,A);
endmodule
//2.20$
//https://www.microjpm.com/products/cd4049-buffer-conversor/