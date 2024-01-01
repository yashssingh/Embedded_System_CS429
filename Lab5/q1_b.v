module para_n_bit_adder #(parameter n = 3) (input [n-1:0] a, b, output [n:0] out);
    assign out = a + b;
endmodule

module ins_adder(
input [1:0] a1, b1, input [3:0] a2, b2, input [4:0] a3, b3, 
output [2:0] out1, output [4:0] out2, output [5:0] out3);

para_n_bit_adder #2 g1 (.a(a1), .b(b1), .out(out1)); para_n_bit_adder #4 g2 (.a(a2), .b(b2), .out(out2)); 

para_n_bit_adder #5 g3 (.a(a3), .b(b3), .out(out3));

endmodule


module q5_b_tb();
reg [1:0] a1, b1;
reg [3:0] a2, b2;
reg [4:0] a3, b3;
wire [2:0] out1;
wire [4:0] out2;
wire [5:0] out3;
ins_adder g1 (.a1(a1), .b1(b1), .a2(a2), .b2(b2), .a3(a3), .b3(b3),
.out1(out1), .out2(out2), .out3(out3));
    initial begin
        $dumpfile("q5_b_tb.vcd");
        $dumpvars(0, q5_b_tb);
        a1 = 2'b00;
        b1 = 2'b00;
        a2 = 4'b0000;
        b2 = 4'b0000;
        a3 = 5'b00000;
        b3 = 5'b00000;
        #10;
        a1 = 2'b01;
        b1 = 2'b01;
        a2 = 4'b0010;
        b2 = 4'b0010;
        a3 = 5'b00010;
        b3 = 5'b00010;
        #10;
        a1 = 2'b10;
        b1 = 2'b10;
        a2 = 4'b0101;
        b2 = 4'b0101;
        a3 = 5'b00101;
        b3 = 5'b00101;
        #10;
        a1 = 2'b11;
        b1 = 2'b11;
        a2 = 4'b0111;
        b2 = 4'b0111;
        a3 = 5'b00111;
        b3 = 5'b00111;
        #10;
    end
    initial begin
$monitor("a1 = %b, b1 = %b, out1 = %b, a2 = %b, b2 = %b, out2 = %b, a3 = %b, b3 = %b, out3 = %b", a1, b1, out1, a2, b2, out2, a3, b3, out3);
    end
endmodule