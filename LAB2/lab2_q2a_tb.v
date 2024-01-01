`include "lab2_q2a.v"
module lab2_q2a_tb();

reg a,b;
wire out;
lab2_q2a obj(.a(a),.b(b),.out(out));

initial 
    begin
        $dumpfile("lab2_q2a.vcd");
        $dumpvars(0,lab2_q2a_tb);
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
