`include "lab1_q1.v";
module lab1_q1_tb;

reg v1,v2,v3;
wire out;

lab1_q1 obj(.out(out),.v1(v1),.v2(v2),.v3(v3));

initial 
    begin 
        $dumpfile("lab1_q1.vcd");
        $dumpvars(0,lab1_q1_tb);

        #10;
        
        v1 = 0; v2 = 0; v3 = 0;
        #10 $display("Input: v1=%b, v2=%b, v3=%b, Output: out=%b", v1, v2,v3, out);

        v1 = 0; v2 = 0; v3 = 1;
        #10 $display("Input: v1=%b, v2=%b, v3=%b, Output: out=%b", v1, v2,v3, out);

        v1 = 0; v2 = 1; v3 = 0;
        #10 $display("Input: v1=%b, v2=%b, v3=%b, Output: out=%b", v1, v2,v3, out);

        v1 = 1; v2 = 0; v3 = 0;
        #10 $display("Input: v1=%b, v2=%b, v3=%b, Output: out=%b", v1, v2,v3, out);

        v1 = 0; v2 = 1; v3 = 1;
        #10 $display("Input: v1=%b, v2=%b, v3=%b, Output: out=%b", v1, v2,v3, out);

        v1 = 1; v2 = 1; v3 = 0;
        #10 $display("Input: v1=%b, v2=%b, v3=%b, Output: out=%b", v1, v2,v3, out);

        v1 = 0; v2 = 1; v3 = 1;
        #10 $display("Input: v1=%b, v2=%b, v3=%b, Output: out=%b", v1, v2,v3, out);

        v1 = 1; v2 = 0; v3 = 1;
        #10 $display("Input: v1=%b, v2=%b, v3=%b, Output: out=%b", v1, v2,v3, out);

        v1 = 1; v2 = 1; v3 = 1;
        #10 $display("Input: v1=%b, v2=%b, v3=%b, Output: out=%b", v1, v2,v3, out);

        $finish;

    end
endmodule



