// STRUCTURAL LEVEL 
// module lab1_q1(out,v1,v2,v3);

// input v1,v2,v3;
// output out;
// wire w1,w2,w3;

// and(w1,v1,v2);
// and(w2,v2,v3);
// and(w3,v1,v3);

// or(out,w1,w2,w3);

// endmodule



//REGISTER TRANSFER LEVEL
// module lab1_q1(out,v1,v2,v3);

// input v1,v2,v3;
// output out;

// assign out = (v1 & v2) | (v2 & v3) | (v1 & v3);

// endmodule


//BEHAVIORAL LEVEL
module lab1_q1(out,v1,v2,v3);

input v1,v2,v3;
output reg out;

always @(v1, v2, v3) 
    begin
        if ((v1 & & v2) | | (v2 & & v3) | | (v3 & & v1))
            out = 1; 
        else
            out = 0; 
    end

endmodule

