module n_bit_adder(c,a,b);

parameter n =3;
input [n-1:0] a , b ;
output [n:0] c;
assign c = a+b;

endmodule


module adders(a1,b1,c1,a2,b2,c2,a3,b3,c3);

input [n-1:0] a1,b1;
input [n-1:0] a2,b2;
input [n-1:0] a3,b3;

output [n:0] c1;
output [n:0] c2;
output [n:0] c3;

n_bit_adder obj1(c1,a1,b1);
n_bit_adder obj2(c2,a2,b2);
n_bit_adder obj3(c3,a3,b3);

defparam obj1.n=2;
defparam obj1.n=4;
defparam obj1.n=5;

endmodule

// TESTBENCH 
module param_tb();
parameter n = 3;
reg [n-1:0] a,b;
wire [n:0] c;
adders obj(a1,b1,c1,a2,b2,c2,a3,b3,c3);

initial 
    begin
        $dumpfile("param_WAVE.vcd");
        $dumpvars(0,param_tb);
        $monitor("a = %b, b = %b, sum = %b", a, b, c); 
    end







