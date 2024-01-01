// STRUCTURAL LEVEL : 

// module half_struct(sum, carry, a, b);

// input a, b;
// output sum, carry;

// xor g1(sum, a, b);
// and g2(carry, a, b);

// endmodule

// REGISTER TRANSFER LEVEL 

// module half_RTL(sum, carry, a, b);
// input a, b;
// output sum, carry;
// assign sum = a ^ b;
// assign carry = a & b;
// endmodule


// BEHAVIORAL LEVEL 

module half_beh(sum, carry, a, b);
input a, b;
output reg sum, carry;
always @(a, b) begin
sum = a ^ b;
carry = a & b;
end
endmodule


