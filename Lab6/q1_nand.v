module Nand_gate (input a, input b, output f); wire wn;
supply1 vdd;
supply0 gnd;
  pmos p1(f,vdd,a);
  pmos p2(f,vdd,b);
  nmos n1(f,wn,a);
  nmos n2(wn,gnd,b);
endmodule
module Nand_gate_tb();
  reg a,b;
  wire f;
 Nand_gate uwu(a,b,f);
  initial begin
    $dumpfile("Lab6_q1_Nand.vcd");
    $dumpvars(0,Nand_gate_tb);
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