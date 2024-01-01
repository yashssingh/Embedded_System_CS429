`include "lab2.v"
module lab2_tb;

reg a,b;
wire out;

lab2 obj(.a(a),.b(b),.out(out));

initial 
    begin
        $dumpfile("lab2.vcd");
        $dumpvars(0,lab2_tb);
    end

initial
    begin
        #0 a=0 ; b=0;
        #10 a=0 ; b=1;
        #10 a=1 ; b=0;
        #10 a=1 ; b=1;
        #10 $finish;
    end

endmodule
