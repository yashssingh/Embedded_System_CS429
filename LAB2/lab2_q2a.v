module lab2_q2a(input a,input b,output out);

wire w1;

or g1(w1,a,b);
not g2(out,g1);

endmodule