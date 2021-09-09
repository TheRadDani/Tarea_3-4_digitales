`timescale 1ns/100ps
module flip_flop(input D,input clk,output reg Q);
    always @(posedge clk) 
        #15 Q <= D;
endmodule
//precio 1.45$
//https://www.microjpm.com/products/mc74hc273/