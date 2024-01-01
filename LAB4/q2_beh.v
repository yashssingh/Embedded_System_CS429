module ALU_Beh_dataflow (
    input [3:0] A,
    input [3:0] B,
    input [2:0] ALU_OP,
    output reg [3:0] out
);
always @(*) begin
    case (ALU_OP)
        3'b000: out = A + B;
        3'b001: out = A - B;
        3'b010: out = ~(A & B);
        3'b011: out = ~(A | B);
        3'b100: out =(A < B) ? 4'b1 : 4'b0; 3'b101: out = (A == B) ? 4'b1 : 4'b0; 3'b110: out = A << B[1:0];
3'b111: out = A >> B[1:0];
        default: out = 4'bxxxx;
    endcase
end
endmodule


module ALU_behavioral_tb();
reg[3:0]A,B;
reg[2:0]ALU_OP;
wire[3:0]out;
ALU_Beh_dataflow a1(A,B,ALU_OP,out);
initial
begin
    $dumpfile("ALU_dataflow_beh.vcd");
    $dumpvars(0,ALU_behavioral_tb);
    ALU_OP=3'b000;A=4'b1010;B=4'b0101;
    #10;
    ALU_OP=3'b001;A=4'b1010;B=4'b0101;
    #10;
    ALU_OP=3'b010;A=4'b1010;B=4'b0101;
    #10;
    ALU_OP=3'b011;A=4'b1010;B=4'b0101;
    #10;
    ALU_OP=3'b100;A=4'b1010;B=4'b0101;
    #10;
    ALU_OP=3'b101;A=4'b1010;B=4'b0101;
    #10;
    ALU_OP=3'b110;A=4'b1010;B=4'b0101;
    #10;
    ALU_OP=3'b111;A=4'b1010;B=4'b0101;
    #10;
end
initial begin
$monitor("ALU_OP = %b, A = %b, B = %b, out = %b",ALU_OP,A,B,out); end
endmodule