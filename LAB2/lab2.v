module lab2(a,b,out);
input a,b;
output out;

wire w1,w2,a_bar,b_bar;

assign #0.03 a_bar=~a;
assign #0.03 b_bar=~b;

assign #1   w1 = (a & b_bar);
assign #1   w2 = (a_bar & b);
assign #1.5 out = w1 | w2;

endmodule
