module FullAdder(
    input a,
    input b,
    input c,
    output sum,
    output carry
);
assign sum = a ^ b ^ c;
assign carry = (a & b) | (b & c) | (a & c);
endmodule
module RippleCarryAdder(
    input [3:0] a,
    input [3:0] b,
    output [3:0] sum,
    output carry
);
    wire c1, c2, c3;
FullAdder FA0 (.a(a[0]), .b(b[0]), .c(1'b0), .sum(sum[0]), .carry(c1)); FullAdder FA1 (.a(a[1]), .b(b[1]), .c(c1), .sum(sum[1]), .carry(c2)); FullAdder FA2 (.a(a[2]), .b(b[2]), .c(c2), .sum(sum[2]), .carry(c3)); FullAdder FA3 (.a(a[3]), .b(b[3]), .c(c3), .sum(sum[3]), .carry(carry));
endmodule



module RippleCarryAdder_tb;
    reg [3:0] a, b;
    wire [3:0] sum;
    wire carry;
RippleCarryAdder UWU (a,b,sum,carry);
    initial 
    begin
        $dumpfile("RippleCarryAdder_q3.vcd");
        $dumpvars(0, RippleCarryAdder_tb);
        #0 a = 4'b0001; b = 4'b0010;
        #10 a = 4'b1100; b = 4'b0011;
        #10 a = 4'b1111; b = 4'b0000;
        #10 a = 4'b0110; b = 4'b0110;
        #10 a = 4'b1001; b = 4'b0111;
        #10 $finish;
    end

    initial 
    begin
        $monitor("a = %b, b = %b, sum = %b, cout = %b", a, b, sum, carry);
    end
endmodule