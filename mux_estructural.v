`include "mux_2b.v"
`include "flip_flop.v"
module mux_estructural(
    input clk,
    input reset_L,
    input selector,//bit de seleccion
    input [1:0] data_in0,//entradad de datos 0
    input [1:0] data_in1,//entrada de datos 1
    input [0:1] gnd,
    output reg [1:0] data_out_e//salida como bus de dos bits
);
reg [1:0] x;
reg [1:0] D;
mux_2b MUX1(.data_in0 (data_in0), .data_in1(data_in1), .selector(selector), .data_out_e(x));
mux_2b MUX2(.gnd (gnd), .gnd(x), .reset_L(reset_L), .data_out_e(D));
flip_flop ff(.gnd(D),.clk(clk),.data_out_e(data_out_e));
endmodule