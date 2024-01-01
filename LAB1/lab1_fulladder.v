//STRUCTURAL LEVEL
// module full_adder (sum, cout, a, b, cin);

// input a, b, cin;
// output sum, cout;
// wire w1, w2, w3;

// xor g1(w1, a, b),
//     g2(sum, w1, cin);
// and g3(w2, a, b),
//     g4(w3, w1, cin);
// or g5(cout, w2, w3);

// endmodule


//REGISTER TRANSFER LEVEL 
// module full_rtl (sum, cout, a, b, cin);
// input a, b, cin;
// output sum, cout;
// assign sum = a ^ b ^ cin;
// assign cout = (a & b) | (b & cin) | (a & cin);
// endmodule


//BEHAVIORAL LEVEL 
module full_beh (sum, cout, a, b, cin);
input a, b, cin;
output reg sum, cout;
always @(a, b, cin) begin
sum = a ^ b ^ cin;
cout = (a & b) | (b & cin) | (a & cin);
end
endmodule