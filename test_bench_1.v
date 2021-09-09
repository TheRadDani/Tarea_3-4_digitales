module test_bench_1(
output reg A,
output reg B,
output reg selector,
output reg clk,
output reg [0:1] mux2_in_0,
output reg [0:1] mux2_in_1,
input out_mux1b,
input [0:1] mux2_out,
input Q,
input out_or_gate,
input out_not_gate,
input out_and_gate
);    
initial begin
    $dumpfile("test_1.vcd");	// Nombre de .vcd a graficar
	$dumpvars;
    // Mensaje que se imprime en consola una vez
    $display ("\t\t\tA,\tB,\tselector,\tclk,\tmux2_in_0,\tmux2_in_1,\tout_mux1b,\tmux2_out,\tQ,\tout_or_gate,\tout_not_gate,\tout_and_gate"); 
    // Mensaje que se imprime en consola cada vez que un elemento de la lista cambia 
    $monitor($time,"\t%b\t%b\t\t%b\t\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", A, B, selector, clk, mux2_in_0, mux2_in_1,out_mux1b,mux2_out,Q,out_or_gate,out_not_gate,out_and_gate); 
    selector = 0;
    mux2_in_0 = 2'b00;
    mux2_in_1= 2'b00;
    A <= 0;
	B <= 0;
    @(posedge clk)
    mux2_in_0 <= 2'b01;
    mux2_in_1<= 2'b10;
    A <= 1;
	B <= 1;

    @(posedge clk)
    mux2_in_0 <= 2'b00;
    mux2_in_1<= 2'b11;
    selector<=~selector;
    A <= 0;
	B <= 1;

    @(posedge clk)
    mux2_in_0 <= 2'b11;
    mux2_in_1<= 2'b00;
    selector <= 1;
    A <= 1;
	B <= 1;

    @(posedge clk)
    selector <= 1;
    mux2_in_0 <= 2'b10;
    mux2_in_1 <= 2'b01;
    selector<=~selector;
    A <= 1;
	B <= 0;

    @(posedge clk)
    mux2_in_0 <= ~mux2_in_0;
    mux2_in_1 <= mux2_in_1+1;
    A <= 1;
	B <= 1;

    @(posedge clk)
    mux2_in_0 <= ~mux2_in_0+1;
    mux2_in_1= 2'b11;
    selector<=~selector;
    A <= 0;
	B <= 1;
    $finish;			// Termina de almacenar se�ales
end
    // Reloj
	initial	clk 	<= 0;			// Valor inicial al relo
	always	#2 clk 	<= ~clk;		//invertido cada 2*10ns
endmodule
