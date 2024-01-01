// NOT USING SWITCH LEVEL MODELING 
module Not_gate(input x, output y);
  supply0 gnd;
  supply1 vdd;
  pmos p1 (y,vdd,x);
  nmos n1 (y,gnd,x);
endmodule
module Not_gate_tb();
  reg x;
  wire y;
  Not_gate uwu(x,y);
  initial begin
    $dumpfile("Lab6_q1_not.vcd");
    $dumpvars(0,Not_gate_tb);
    x = 0;
    #10 x = 1;
    #10 x = 0;
    #10 x = 1;
    #1 $finish;
end
  initial begin
    $monitor("x = %b, y = %b", x, y);
  end
endmodule