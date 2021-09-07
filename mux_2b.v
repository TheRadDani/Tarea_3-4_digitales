`include "mux_1b.v"
module mux_2b(input selector,
            input [0:1] mux2_in_0,
            input [0:1] mux2_in_1,
            output reg [0:1] mux2_out);
mux_1b MUX1B1 (.mux1_in_0(mux2_in_0[0]), .mux1_in_1(mux2_in_1[0]), .selector(selector), .mux2_out(mux2_out[0]));
mux_1b MUX1B2 (.mux1_in_0(mux2_in_0[1]), .mux1_in_1(mux2_in_1[1]), .selector(selector), .mux2_out(mux2_out[1]));
endmodule
