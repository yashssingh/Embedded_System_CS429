`timescale 1ns/1ns
module d_flip_flop(d,clk,q);
input d;
input clk;
output reg q;
always @(posedge clk)
begin
q<=d;
end
endmodule

module tb_d_flip_flop;
reg d, clk;
wire q;
d_flip_flop uut(d,clk,q);
initial begin
clk = 0;
forever #3 clk = ~clk;
end
initial begin
d = 0;
#5 d = 1;
#5 d = 0;
#5 d = 1;
#5 d = 0;
#15 $finish;
end
initial begin
$dumpfile("tb_d_flip_flop.vcd");
$dumpvars(0, tb_d_flip_flop);
end
endmodule