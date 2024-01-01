module Processor ( input wire
clk, input wire reset, input
wire [7:0] instruction_in,
output reg [7:0] data_out
);
// Instruction Memory reg
[15:0] instruction_memory [0:7];
// Data Memory reg [7:0]
data_memory [0:7];
// Registers reg
[7:0] R0, R1, R2;
// Control Signals reg
fetch, decode, execute;
// Fetch Stage reg
[2:0] pc; reg [15:0]
instruction;
always @(posedge clk or posedge reset)
begin if (reset) pc <= 3'b000;
else if (fetch) pc <= pc + 1; end
always @(posedge clk or posedge reset) begin
if (reset) fetch <= 1'b0; else if
(decode) fetch <= 1'b1; else if
(execute) fetch <= 1'b0; end

always @(posedge clk) begin if
(fetch) instruction <=
instruction_memory[pc]; end
// Decode Stage reg [7:0] opcode,
operand1, operand2, offset;
always @(posedge clk or posedge reset)
begin if (reset) decode <= 1'b0;
else if (fetch) decode <= 1'b1;
else if (execute) decode <= 1'b0; end
always @(posedge clk) begin if (decode)
begin opcode <= instruction[15:8];
operand1 <= instruction[7:4]; operand2
<= instruction[3:0]; offset
<= instruction[7:0]; end end
// Execute Stage reg [7:0] result;
always @(posedge clk or posedge reset) begin
if (reset) execute <= 1'b0; else if
(decode) execute <= 1'b1; else if
(execute && opcode == 4'b0000) // ADD
result <= operand1 + operand2;
else if (execute && opcode == 4'b0001) // SUB
result <= operand1 - operand2; else if (execute && opcode
== 4'b0010) // AND result <= operand1 & operand2;
else if (execute && opcode == 4'b0011) // OR result <=
operand1 | operand2; else if (execute && opcode ==
4'b0100) // NOT result <= ~operand1; else if
(execute && opcode == 4'b0101) // B pc <= pc + offset;
else if (execute && opcode == 4'b0110 && R1 == 8'h00) // BZ
pc <= pc + offset; else if (execute && opcode == 4'b1000)
// LDR result <=
data_memory[operand1]; else if (execute && opcode ==
4'b1001) // STR data_memory[operand1] <= operand2;
else result <= 'bx; // invalid instruction
if (execute) data_out <= result; else data_out <= 'bx; end
endmodule
