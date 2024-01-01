module Nor_gate(input a, input b, output f); wire wp;
supply1 vdd;
supply0 gnd;
  pmos p1(wp,vdd,a);
  pmos p2(f,wp,b);
  nmos n1(f,gnd,a);
  nmos n2(f,gnd,b);
endmodule
module Nor_gate_tb();
  reg a,b;
  wire f;
  Nor_gate uwu(a,b,f);
  initial begin
    $dumpfile("Lab6_q1_Nor.vcd");
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