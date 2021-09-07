module test_bench_2(
output reg [0:1] data_in0,
output reg [0:1] data_in1,
output reg clk,
output reg [0:1] gnd,
output reg reset_L,
input data_out_c,
input data_out_e,
);    
initial begin
    $dumpfile("test_2.vcd");	// Nombre de .vcd a graficar
	$dumpvars;
    // Mensaje que se imprime en consola una vez
    $display ("\t\t\tdata_in0,\tdata_in1,\tclk,\treset_L,\tdata_out_c,\tdata_out_e"); 
    // Mensaje que se imprime en consola cada vez que un elemento de la lista cambia 
    $monitor($time,"\t\t%b\t%b\t\t%b\t%b\t%b\t%b", data_in0,data_in1,clk,reset_L,data_out_c,data_out_e); 
    {data_in0,data_in1}<= 2'b00; //valor inicial de datos de entradas
    reset_L<=0;    //valor por defecto de entrada selector
    selector<=0; //asignacion bloqueante asincronica
    gnd=2'b00;
    repeat (3) begin //repetir prueba 3 ciclos de reloj
    @(posedge clk);
    reset_L<=1;
    selector<=~selector;
    {data_in0,data_in1}<={data_in0,data_in1}+1;
    end 
    //fin prueba (reset_L<=1)
    @(posedge clk)
    data_in0 <= 2'b00;
    data_in1 <= 2'b11;
    
    @(posedge clk)
    data_in0 <= 2'b01;
    data_in1 <= 2'b00;
    selector <= 1;
    
    @(posedge clk)
    data_in0 <= 2'b00;
    data_in1 <= 2'b10;
    selector <= ~selector;//toogle a selector

    @(posedge clk)
    data_in0 <= 2'b01;
    data_in1 <= 2'b11;
    selector <= 0;
    
    @(posedge clk)
    data_in0 <= 2'b10;
    data_in1 <= 2'b01;
    selector <= 1;

    @(posedge clk)
    data_in0 <= 2'b10;
    data_in1 <= 2'b10;
    selector <= 0;

    @(posedge clk)
    selector <= 1;
    

    @(posedge clk)
    data_in0 <= 2'b01;
    data_in1 <= 2'b01;
    selector <= 1;

    @(posedge clk)
    data_in0 <= 2'b01;
    data_in1 <= 2'b01;
    reset_L<=0;
    $finish;			// Termina de almacenar se�ales
end
//contador
/*always @(posedge data_out_c)begin
    contador_c= data_out_c + 1;
end
always @(posedge data_out_e)begin
    contador_e= data_out_e+ 1;
end*/

//checker
/*always @(posedge clk)begin
    if(data_out_c != data_out_e)begin
        check=1;
    end
        
end*/
    // Reloj
	initial	clk 	<= 0;			// Valor inicial al relo
	always	#2 clk 	<= ~clk;		//invertido cada 2*10ns
endmodule
