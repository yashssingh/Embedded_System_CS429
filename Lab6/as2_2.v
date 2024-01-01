module and_gate (input a, input b, output out); wire bnot;
not g2(bnot,b);
nmos n1(out,a,b);
  nmos n2(out,1'b0,bnot);
endmodule
module or_gate(input a, input b, output out); wire bnot;
not g2(bnot,b);
nmos n1(out,1'b1,b);
  nmos n2(out,a,bnot);
endmodule
module xor_gate(input a, input b, output out); wire anot,bnot;
not g1(anot,a);
not g2(bnot,b);
  nmos n1(out,anot,b);
  nmos n2(out,a,bnot);
endmodule
module full_adder(a,b,c,sum,carry);
input a,b,c;
output sum, carry;
wire w1,w2,w3;
and_gate g1(a,b,w1);
xor_gate g2(a,b,w2);
and_gate g3(c,w2,w3);
xor_gate g4(w2,c,sum);
or_gate g5(w1,w3,carry);
endmodule
module full_adder_4bit(input [3:0] a, input [3:0] b, input cin, output [3:0] sum, output cout);
wire c1,c2,c3;
full_adder fa0(a[0],b[0],cin,sum[0],c1); full_adder fa1(a[1],b[1],c1,sum[1],c2); full_adder fa2(a[2],b[2],c2,sum[2],c3); full_adder fa3(a[3],b[3],c3,sum[3],cout);
endmodule
module Lab6_Lq2_tb;
  reg [3:0] a, b;
  reg cin;
  wire [3:0] sum;
  wire cout;
full_adder_4bit uwu(a, b, cin, sum, cout); initial begin
$dumpfile("Lab6_Lq2.vcd");
$dumpvars(0, Lab6_Lq2_tb);
$monitor("a=%b, b=%b, cin=%b : sum=%b, cout=%b", a, b, cin, sum,
cout);
    a = 4'b0000; b = 4'b0000; cin = 1'b0;
    #10 a = 4'b0001; b = 4'b0001; cin = 1'b0;
    #10 a = 4'b0010; b = 4'b0011; cin = 1'b0;
    #10 a = 4'b0100; b = 4'b0101; cin = 1'b0;
    #10 a = 4'b0111; b = 4'b1000; cin = 1'b0;
    #10 a = 4'b1111; b = 4'b1111; cin = 1'b0;
    #10 $finish;
  end
endmodule
