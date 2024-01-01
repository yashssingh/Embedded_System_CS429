primitive mux_udp(out,sel0,sel1,a,b,c,d);

input sel0,sel1,a,b,c,d;
output out;

table 
 //s0  s1  a  b  c  d  : out
    0  0   0  ?  ?  ?  : 0;
    0  0   1  ?  ?  ?  : 1;
    0  1   ?  0  ?  ?  : 0;
    0  1   ?  1  ?  ?  : 1;
    1  0   ?  ?  0  ?  : 0;
    1  0   ?  ?  1  ?  : 1;
    1  1   ?  ?  ?  0  : 0;
    1  1   ?  ?  ?  1  : 1;
    ?  x   ?  ?  ?  ?  : x;
    x  ?   ?  ?  ?  ?  : x;
endtable
endprimitive

module lab4_q1_udp(out,sel0,sel1,a,b,c,d);

input sel0,sel1,a,b,c,d;
output out;

mux_udp obj(out,sel0,sel1,a,b,c,d);

endmodule
