module Capacitor (input wire clk, output wire Q); reg state = 0;
    wire w;
    nmos sw (w, state, clk);
    always @(posedge clk)
        state <= ~state;
    assign Q = clk ? w : 1'bz;
endmodule
module Lab6_Lq1_tb;
reg clk;
    wire Q;
    Capacitor uwu(.clk(clk), .Q(Q));
    initial begin
clk = 0;
        forever #10 clk = ~clk;
    end
    initial begin
        $monitor("At time %d, clk = %b, Q = %b", $time, clk, Q);
        #100 $finish;
    end
    initial begin
        $dumpfile("Lab6_Lq1.vcd");
        $dumpvars(0, Lab6_Lq1_tb);
    end
endmodule