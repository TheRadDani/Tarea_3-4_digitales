`include "mux_2b.v"
`include "flip_flop.v"
module mux_estructural(
    input clk,
    input reset_L,
    input selector,//bit de seleccion
    input [1:0] data_in0,//entradad de datos 0
    input [1:0] data_in1,//entrada de datos 1
    input [0:1] gnd,
    output [1:0] data_out_e//salida como bus de dos bits
);
wire [1:0] om;
wire [1:0] Dn;
mux_2b mux0(.mux2_in_0 (data_in0), .mux2_in_1(data_in1), .selector(selector), .mux2_out(om));
mux_2b mux1(.mux2_in_0 (gnd), .mux2_in_1(om), .reset_L(reset_L), .mux2_out(Dn));
flip_flop ff0(.D(Dn[0]),.clk(clk),.Q(data_out_e[1]));
flip_flop ff1(.D(Dn[1]),.clk(clk),.Q(data_out_e[1]));
endmodule