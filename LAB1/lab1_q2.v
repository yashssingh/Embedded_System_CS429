module system1(out,v1,v2,v3);

input v1,v2,v3;
output out;
wire w1,w2,w3;

and g1(w1,v1,v2);
and g2(w2,v3,v2);
and g3(w3,v1,v3);
or g4(out,g1,g2,g3);

endmodule

module system2(outa,va,vb,vc);

input va,vb,vc;
output outa;
wire out;

system1 s1(out,va,vb,vc);
and g1(outa,out,1'b1);

endmodule

