module Nor_gate(input a, input b, output f); wire anot,bnot;
not g1(anot,a);
not g2(bnot,b);
  nmos n1(f,1'b0,b);
  nmos n2(f,anot,bnot);
endmodule
module Nor_gate_tb();
  reg a,b;
  wire f;
  Nor_gate uwu(a,b,f);
  initial begin
    $dumpfile("Lab6_q2_nor.vcd");
    $dumpvars(0,Nor_gate_tb);
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