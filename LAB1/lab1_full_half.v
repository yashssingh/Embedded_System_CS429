module half_adder(sum, carry, a, b);
input a, b;
output sum, carry;
xor g1(sum, a, b);
and g2(carry, a, b);
endmodule

module full_adder(sum, cout, a, b, cin);
input a, b, cin;
output sum, cout;
wire s1, c1, c2;
half_adder ha1(s1,c1,a,b);
half_adder ha2(sum,c2,cin,s1);
or g1(cout,c1,c2);
endmodule


// module full_adder_tb;
//     reg a, b, cin;
//     wire sum, cout;

//     full_adder uut (.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
//     // Testbench behavior
//     initial begin
//         $dumpfile("half_full_adder.vcd");
//         $dumpvars(0, full_adder_tb);
//         #10;
//         a = 0; b = 0; cin = 0;
//         #10 $display("Input: a=%b, b=%b, cin=%b, sum=%b, cout=%b", a,b, cin, sum, cout);
//         a = 0; b = 0; cin = 1;
//         #10 $display("Input: a=%b, b=%b, cin=%b, sum=%b, cout=%b", a,b, cin, sum, cout);
//         a = 0; b = 1; cin = 0;
//         #10 $display("Input: a=%b, b=%b, cin=%b, sum=%b, cout=%b", a,b, cin, sum, cout);
//         a = 0; b = 1; cin = 1;
//         #10 $display("Input: a=%b, b=%b, cin=%b, sum=%b, cout=%b", a,b, cin, sum, cout);
//         a = 1; b = 0; cin = 0;
//         #10 $display("Input: a=%b, b=%b, cin=%b, sum=%b, cout=%b", a,b, cin, sum, cout);
//         a = 1; b = 0; cin = 1;
//         #10 $display("Input: a=%b, b=%b, cin=%b, sum=%b, cout=%b", a,b, cin, sum, cout);
//         a = 1; b = 1; cin = 0;
//         #10 $display("Input: a=%b, b=%b, cin=%b, sum=%b, cout=%b", a,b, cin, sum, cout);
//         a = 1; b = 1; cin = 1;
//         #10 $display("Input: a=%b, b=%b, cin=%b, sum=%b, cout=%b", a,b, cin, sum, cout);
        
//         $finish; 
//         end
// endmodule