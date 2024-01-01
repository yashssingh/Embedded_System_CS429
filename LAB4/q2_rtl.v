module ALU_4bit_dataflow (
    input [3:0] A,
    input [3:0] B,
    input [2:0] ALU_OP,
    output [3:0] out
);
assign out = (ALU_OP == 3'b000) ? A + B :
            (ALU_OP == 3'b001) ? A - B :
(ALU_OP == 3'b010) ? ~(A & B) :
(ALU_OP == 3'b011) ? ~(A | B) :
(ALU_OP == 3'b100) ? (A < B) ? 4'b1 : 4'b0:
(ALU_OP == 3'b101) ? (A == B) ? 4'b1 : 4'b0:
(ALU_OP == 3'b110) ? (B[1:0] == 2'b00) ? A : (B[1:0] == 2'b01)
? (A << 1) : (B[1:0] == 2'b10) ? (A << 2) : (A << 3) :
(ALU_OP == 3'b111) ? (B[1:0] == 2'b00) ? A : (B[1:0] == 2'b01)
? (A >> 1) : (B[1:0] == 2'b10) ? (A >> 2) : (A >> 3) : 4'bxxxx; // Default operation
endmodule



module lab4_q2a_tb();
reg[3:0]A,B;
reg[2:0]ALU_OP;
wire[3:0]out;
ALU_4bit_dataflow a1(A,B,ALU_OP,out);
initial
begin
    $dumpfile("ALU_RTL_dataflow.vcd");
    $dumpvars(0,lab4_q2a_tb);
    ALU_OP=3'b000;A=4'b1100;B=4'b0011;
    #10;
    ALU_OP=3'b001;A=4'b1100;B=4'b0011;
    #10;
    ALU_OP=3'b010;A=4'b1100;B=4'b0011;
    #10;
    ALU_OP=3'b011;A=4'b1100;B=4'b0010;
    #10;
    ALU_OP=3'b100;A=4'b0110;B=4'b0011;
    #10;
    ALU_OP=3'b101;A=4'b1010;B=4'b1010;
    #10;
    ALU_OP=3'b110;A=4'b1010;B=4'b0010;
    #10;
    ALU_OP=3'b111;A=4'b1010;B=4'b0010;
    #10;
end
initial begin
$monitor("ALU_OP = %b, A = %b, B = %b, out = %b",ALU_OP,A,B,out); end
endmodule