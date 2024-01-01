module Lab6_q3_mux(out, s, i0, i1);
  output out;
  input s, i0, i1;
  wire sbar;
  not (sbar, s);
  cmos (out, i0, sbar, s);
  cmos (out, i1, s, sbar);
endmodule
module Lab6_q3_mux_tb;
  reg s, i0, i1;
  wire out;
Lab6_q3_mux uwu(.out(out), .s(s), .i0(i0), .i1(i1)); initial begin
    $dumpfile("Lab6_q3.vcd");
    $dumpvars(0, Lab6_q3_mux_tb);
    s = 0; i0 = 0; i1 = 0;
#10 s = 0; i0 = 0; i1 = 1; #10 s = 1; i0 = 0; i1 = 1; #10 s = 0; i0 = 1; i1 = 0; #10 s = 1; i0 = 1; i1 = 0;
#10 $finish;
end
  initial begin
$monitor("s = %b, i0 = %b, i1 = %b, out = %b", s, i0, i1, out); end
endmodule