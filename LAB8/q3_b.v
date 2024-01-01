module d_flip_flop_3b (clk,reset,preset,d,q);
input clk,reset,preset,d;
output reg q;
always @(posedge clk or negedge reset or negedge preset) begin
if (!reset)
q <= 0;
else if (!preset)
q <= 1;
else
q <= d;
end
endmodule
`timescale 1ns/1ns
module tb_d_flip_flop_3b;
reg clk, reset, preset, d;
wire q;
d_flip_flop_3b uut (clk,reset,preset,d,q);
initial begin
clk = 0;
forever #5 clk = ~clk;
end
initial begin
reset = 0;
preset=0;
d=0;
#10 reset = 1;
d = 1;
#10 d = 0;
d = 0;
#10 d = 1;
preset = 0;
#10 preset = 1;
reset = 0;
d = 1;
#10 d = 0;
#10 reset = 1;
#10 $finish;
end
initial begin
$dumpfile("tb_d_flip_flop_3b.vcd");
$dumpvars(0, tb_d_flip_flop_3b);
end
endmodule