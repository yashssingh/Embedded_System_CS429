`include "q2_aa.v"
module mux2to1 #(parameter N = 8) (input [N-1:0] i0, i1, [N-1:0] y);
    always @(*) begin
        if(s)
            y = i1; 
        else
            y = i0; 
        end
endmodule

module mux8to1 #(parameter N = 8) (input [N-1:0] i0, i1, i7, input [2:0] s, output wire [N-1:0] y);
wire [N-1:0] o0, o1;
mux4to1 #(N) m0 (.i0(i0), .i1(i1), .i2(i2), .i3(i3), s(s[1:0]), .y(o0));
mux4to1 #(N) m1 (.i0(i4), .i1(i5), .i2(i6), .i3(i7), .s(s[1:0]), .y(o1));
mux2to1 #(N) m2 (.i0(o0), .i1(o1), .s(s[2]), .y(y));
endmodule


module tb_mux8to1;
    reg [7:0] i0, i1, i2, i3, i4, i5, i6, i7;
    reg [2:0] s;
    wire [7:0] y;

mux8to1 #(8) u1 (.i0(i0), .i1(i1), .i2(i2), .i3(i3), .i4(i4), .i5(i5),
.i6(i6), .i7(i7), .s(s), .y(y));

    initial begin
        $dumpfile("mux8to1.vcd");
        $dumpvars(0, tb_mux8to1);
        i0 = 8'hAA; i1 = 8'hBB; i2 = 8'hCC; i3 = 8'hDD; i4 = 8'hEE; i5 =
8'hFF; i6 = 8'h11; i7 = 8'h22; s = 3'b000;
        #10 s = 3'b001;
        #10 s = 3'b010;
        #10 s = 3'b011;
        #10 s = 3'b100;
        #10 s = 3'b101;
        #10 s = 3'b110;
        #10 s = 3'b111;
        #10 $finish;
    end
    initial begin
$monitor("i0 = %b, i1 = %b, i2 = %b, i3 = %b, i4 = %b, i5 = %b, i6 = %b, i7 = %b, s = %b, y = %b", i0, i1, i2, i3, i4, i5, i6, i7, s, y);
    end
endmodule