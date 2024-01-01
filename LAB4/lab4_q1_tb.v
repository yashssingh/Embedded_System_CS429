`include "lab4_q1.v"

module mux_udp_tb();
reg sel0,sel1,a,b,c,d;
wire out;

lab4_q1_udp obj(.out(out),.sel0(sel0),.sel1(sel1),.a(a),.b(b),.c(c),.d(d));
initial begin
    $dumpfile("lab4_q1.vcd");
    $dumpvars(0,mux_udp_tb);
end

initial 
begin
    #0  sel0=0; sel1=0; a=0; b=0; c=1; d=1;
    #10 sel0=0; sel1=0; a=1; b=0; c=1; d=1;
    #10 sel0=0; sel1=1; a=0; b=0; c=1; d=1;
    #10 sel0=0; sel1=1; a=0; b=1; c=1; d=1;
    #10 sel0=1; sel1=0; a=0; b=0; c=0; d=1;
    #10 sel0=1; sel1=0; a=0; b=0; c=1; d=1;
    #10 sel0=1; sel1=1; a=0; b=0; c=1; d=0;
    #10 sel0=1; sel1=1; a=0; b=0; c=1; d=1;
    #10 $finish;
end

endmodule

