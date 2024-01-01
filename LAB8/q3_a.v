module d_flip_flop_3a (clk, reset,d, q);
input clk,reset,d;
output reg q;
always@(posedge clk) begin
if(!reset)
q <= 0;
else
q <= d;
end
endmodule

module tb_d_flip_flop;
reg clk, rst_n, d;
wire q;
d_flip_flop_3a uut (clk,rst_n,d,q);
initial begin
clk = 0;
forever #5 clk = ~clk;
end
initial begin
rst_n = 1;
d = 0;
#10 rst_n = 0;
#10 rst_n = 1;
#10 d = 1;
#10 d = 0;
#10 d = 1;
#10 d = 0;
#10 $finish;
end
initial begin
$dumpfile("tb_d_flip_flop.vcd");
$dumpvars(0, tb_d_flip_flop);
end
endmodule