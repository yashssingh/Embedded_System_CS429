module clk_gen1(clk,clka,clkb,clkc);
input clk;
output reg clka,clkb,clkc;
initial
begin
clka=1'b0;
clkb=1'b0;
clkc=1'b0;
end
always @(posedge clk)
clka<=~clka;
always @(posedge clka)
clkb<=~clkb;
always @(posedge clkb)
clkc<=1'b1;
always @(negedge clka)
clkc<=1'b0;
endmodule


module tb_clk_gen1;
reg clk;
wire clka, clkb, clkc;
clk_gen1 uut (clk,clka,clkb,clkc);
initial begin
clk = 1;
forever #5 clk = ~clk;
end
initial begin
#80 $finish;
end
initial begin
$dumpfile("tb_clk_gen1.vcd");
$dumpvars(0, tb_clk_gen1);
end
endmodule