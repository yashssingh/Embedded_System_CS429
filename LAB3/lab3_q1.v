module adder_flag(input [7:0] A, B, output [7:0] Sum, output reg [4:0] Flags);

wire [7:0] sum_intermediate;
wire carry_intermediate;

  // Adder logic
assign {sum_intermediate, carry_intermediate} = A + B;

  // Assign the adder output to the Sum
assign Sum = sum_intermediate;

  // Zero Flag (f[0]): Set it as ‘1’ if output of the adder is zero, otherwise set it as ‘0’.
assign Flags[0] = (Sum == 8'b0) ? 1'b1 : 1'b0;

  // Parity Flag (f[1]): Set it as ‘1’ if odd number of ones are there in the output of adder, otherwise set it as ‘0’.
assign Flags[1] = (Sum ^ (Sum >> 1)) & 1'b1;

  // Auxiliary Carry Flag (f[2]): Set it as ‘1’ if carry is passed from fourth to fifth bit of the adder, otherwise set it as ‘0’.
assign Flags[2] = carry_intermediate & sum_intermediate[4];

  // Even_or_odd flag (f[3]): Set it as ‘1’ if output of the adder is an even number, otherwise set it as ‘0’.
assign Flags[3] = (Sum[0] == 1'b0);

  // Carry flag (f[4]): Set it as ‘1’ if after arithmetic operation, carry is generated, otherwise set it as ‘0’.
assign Flags[4] = carry_intermediate;

endmodule
