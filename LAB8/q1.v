module swap(clk, A, B);
output reg [1:0] A;
output reg [1:0] B;
output reg clk;
initial begin
A = 2'b00;
B = 2'b01;
clk = 0;
end
always begin
#5 clk = ~clk;
end
always @(posedge clk) begin
B <= A;
A <= B;
end
initial begin
$dumpfile("swap.vcd");
$dumpvars(0, swap);
$display("clk | A | B |");
$monitor("%b | %b | %b |", clk, A, B);
#50 $finish;
end
endmodule