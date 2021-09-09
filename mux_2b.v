`include "mux_1b.v"
module mux_2b(input selector,
            input [0:1] mux2_in_0,
            input [0:1] mux2_in_1,
            output [0:1] mux2_out);
mux_1b mux0_1b (.mux1b_in_0(mux2_in_0[0]), .mux1b_in_1(mux2_in_1[0]), .selector(selector), .out_mux1b(mux2_out[0]));
mux_1b mux1_1b (.mux1b_in_0(mux2_in_0[1]), .mux1b_in_1(mux2_in_1[1]), .selector(selector), .out_mux1b(mux2_out[1]));
endmodule
