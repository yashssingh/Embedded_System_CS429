`timescale 1us/1us
module full_adder(input a, b, cin, output sum, cout);
    assign {cout, sum} = a + b + cin;
endmodule

module q3_tb;
    reg a, b, cin;
    wire sum, cout;
    full_adder u1 (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
    initial begin
        $dumpfile("lab_q3.vcd");
        $dumpvars(0, q3_tb);
        #1 a = 1'b0; b = 1'b0; cin = 1'b0;
        #1 a = 1'b0; b = 1'b0; cin = 1'b1;
        #1 a = 1'b0; b = 1'b0; cin = 1'bx;
        #1 a = 1'b0; b = 1'b1; cin = 1'b0;
        #1 a = 1'b0; b = 1'b1; cin = 1'b1;
        #1 a = 1'b0; b = 1'b1; cin = 1'bx;
        #1 a = 1'b0; b = 1'bx; cin = 1'b0;
        #1 a = 1'b0; b = 1'bx; cin = 1'b1;
        #1 a = 1'b0; b = 1'bx; cin = 1'bx;
        #1 a = 1'b1; b = 1'b0; cin = 1'b0;
        #1 a = 1'b1; b = 1'b0; cin = 1'b1;
        #1 a = 1'b1; b = 1'b0; cin = 1'bx;
        #1 a = 1'b1; b = 1'b1; cin = 1'b0;
        #1 a = 1'b1; b = 1'b1; cin = 1'b1;
        #1 a = 1'b1; b = 1'b1; cin = 1'bx;
        #1 a = 1'b1; b = 1'bx; cin = 1'b0;
        #1 a = 1'b1; b = 1'bx; cin = 1'b1;
        #1 a = 1'b1; b = 1'bx; cin = 1'bx;
        #10 $finish;
    end
    initial begin
$monitor("time = %0t us, a = %b, b = %b, cin = %b, sum = %b, cout = %b", $time, a, b, cin, sum, cout);
    end
endmodule