module Xnor_gate(input a, input b, output f); wire a1=~a,b1=~b;
pmos p1(f,a,b1);
pmos p2(f,a1,b);
  nmos n1(f,a,b);
  nmos n2(f,a1,b1);
endmodule
module Xnor_gate_tb;
  reg a;
  reg b;
  wire f;
  Xnor_gate uwu (.a(a),.b(b),.f(f));
  initial begin
    $dumpfile("Lab6_q1_Xnor.vcd");
    $dumpvars(0,Xnor_gate_tb);
    {a,b}=2'b00;
    #10 {a,b}=2'b01;
    #10 {a,b}=2'b10;
    #10 {a,b}=2'b11;
    #10 $finish;
  end
  initial begin
    $monitor("a = %b, b = %b, f = %b", a, b, f);
  end
endmodule