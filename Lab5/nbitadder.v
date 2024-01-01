module n_bit_adder(c,a,b);

parameter n = 3;
input [n-1:0] a , b;
output [n:0] c;
assign c = a+b;

endmodule


module n_bit_adder_tb();
parameter n = 3;
reg [n-1:0] a , b;
wire [n:0] c;

n_bit_adder obj(.c(c),.a(a),.b(b));

initial 
    begin
        $dumpfile("n_bit_adder_WAVE.vcd");
        $dumpvars(0,n_bit_adder_tb);
        $monitor("a = %b, b = %b, sum = %b", a, b, c); 
    end

initial
    begin
        #0 a = 5 ; b = 4 ;
        #10 a = 3 ; b = 3 ;
        #10 a = 7 ; b = 2 ;
        #10 a = 1 ; b = 7 ;
        #10 $finish;
    end

endmodule