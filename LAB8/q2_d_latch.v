module d_latch(d,enable,reset,q);
input d,enable,reset;
output reg q;
always @ (enable or reset or d)
if (!reset)
q <= 0;
else
if (enable)
q <= d;
endmodule


module d_latch_tb;
reg d;
reg enable;
reg reset;
reg [1:0] t1;
reg [1:0] t2;
integer i;
d_latch d1 (d,enable,reset,q);
initial begin
$dumpfile("d_latch.vcd");
$dumpvars(0, d_latch_tb);
d <= 0; enable <= 0; reset <= 0;
#5 reset <= 1;
for (i = 0; i < 10; i=i+1) begin
t1 = $random;
t2 = $random;
#(t1) enable <= ~enable;
#(t2) d <= i;
end
end
endmodule