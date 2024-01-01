module mux4to1 #(parameter N = 8) (input [N-1:0] i0, i1, i2, i3, input [1:0] s, output reg [N-1:0] y);
    always @(*) begin
        case(s)
            2'b00: y = i0;
            2'b01: y = i1;
            2'b10: y = i2;
            2'b11: y = i3;
    endcase 
    end
endmodule


module q2_a_tb;
reg [7:0] i0, i1, i2, i3; reg [1:0] s;
wire [7:0] y;
mux4to1 #(8) uut (.i0(i0), .i1(i1), .i2(i2), .i3(i3), .s(s), .y(y));
    initial begin
        $dumpfile("mux4to1.vcd");
        $dumpvars(0, q2_a_tb);
        i0 = 8'h00; i1 = 8'h11; i2 = 8'h22; i3 = 8'h33;
        s = 2'b00; #10;
        s = 2'b01; #10;
        s = 2'b10; #10;
        s = 2'b11; #10;
        #1 $finish;
end
    initial begin
$monitor("i0 = %b, i1 = %b, i2 = %b, i3 = %b, s = %b, y = %b", i0, i1, i2, i3, s, y);
    end
endmodule