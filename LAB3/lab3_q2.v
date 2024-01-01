module adder_flag(input [7:0] A, B, output [7:0] Sum, output reg [4:0] Flags);

wire [7:0] sum_intermediate;
wire carry_intermediate;

  // Adder logic
assign {sum_intermediate, carry_intermediate} = A + B;

  // Assign the adder output to the Sum
assign Sum = sum_intermediate;