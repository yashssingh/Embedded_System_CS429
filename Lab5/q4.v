`timescale 1ps/1ps

module half_adder(input a, b, output sum, cout);
    assign sum = a ^ b;
    assign cout = a & b;
endmodule

module q4_tb;
    reg a, b;
wire sum, cout;
half_adder u1 (.a(a), .b(b), .sum(sum), .cout(cout)); 
initial begin
$dumpfile("lab5_q4.vcd");
        $dumpvars(0, q4_tb);
        a = 1'b0; b = 1'b0;
        #3;
        a = 1'b0; b = 1'b1;
        #67;
        a = 1'b1; b = 1'b0;
        #1;
        a = 1'b1; b = 1'b1;
        #1 $finish;
    end

    initial begin
$monitor("At time = %0t ps, a = %b, b = %b, sum = %b, cout = %b",$time, a, b, sum, cout);
    end
endmodule