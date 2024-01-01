module mux2to1(out, s, i0, i1);
  output out;
  input s, i0, i1;
  wire sbar;
  not (sbar, s);
  cmos (out, i0, sbar, s);
   cmos (out, i1, s, sbar);
endmodule
module mux4to1(out, s0, s1, i0, i1, i2, i3); output out;
input s0, s1, i0, i1, i2, i3;
wire out0, out1;
mux2to1 u1 (.out(out0), .s(s0), .i0(i0), .i1(i1));
mux2to1 u2 (.out(out1), .s(s0), .i0(i2), .i1(i3)); mux2to1 u3 (.out(out), .s(s1), .i0(out0), .i1(out1));
endmodule
module mux4to1_tb;
  reg s0, s1, i0, i1, i2, i3;
  wire out;
mux4to1 u1 (.out(out), .s0(s0), .s1(s1), .i0(i0), .i1(i1), .i2(i2), .i3(i3));
  initial begin
    $dumpfile("Lab6_q3_2.vcd");
    $dumpvars(0, mux4to1_tb);
s0 = 0; s1 = 0; i0 = 0; i1 = 0; i2 = 0; i3 = 0;
#10 s0 = 0; s1 = 0; i0 = 1; i1 = 0; i2 = 0; i3 = 0; #10 s0 = 1; s1 = 0; i0 = 0; i1 = 1; i2 = 0; i3 = 0; #10 s0 = 0; s1 = 1; i0 = 0; i1 = 0; i2 = 1; i3 = 0; #10 s0 = 1; s1 = 1; i0 = 0; i1 = 0; i2 = 0; i3 = 1;
    #10 $finish;
  end
  initial begin
  $monitor("s0 = %b, s1 = %b, i0 = %b, i1 = %b, i2 = %b, i3 = %b, out = %b", s0, s1, i0, i1, i2, i3, out);
  end
endmodule