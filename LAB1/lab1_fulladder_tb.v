// `include "lab1_fulladder.v"

// module full_adder_tb;
//     reg a, b, cin;
//     wire sum, cout;

//     full_adder uut (
//         .a(a),
//         .b(b),
//         .cin(cin),
//         .sum(sum),
//         .cout(cout)
// );
//     // Testbench behavior
//     initial begin
//         $dumpfile("full_adder_tb.vcd");
//         $dumpvars(0, full_adder_tb);
        
//         #10;
//         a = 0; b = 0; cin = 0;
//         #10 $display("Input: a=%b, b=%b, cin=%b, sum=%b, cout=%b", a,b, cin, sum, cout);
//         a = 0; b = 0; cin = 1;
//         #10 $display("Input: a=%b, b=%b, cin=%b, sum=%b, cout=%b", a,b, cin, sum, cout);
//         a = 0; b = 1; cin = 0;
//         #10 $display("Input: a=%b, b=%b, cin=%b, sum=%b, cout=%b", a,b, cin, sum, cout);
//         a = 0; b = 1; cin = 1;
//         #10 $display("Input: a=%b, b=%b, cin=%b, sum=%b, cout=%b", a,b, cin, sum, cout);
//         a = 1; b = 0; cin = 0;
//         #10 $display("Input: a=%b, b=%b, cin=%b, sum=%b, cout=%b", a,b, cin, sum, cout);
//         a = 1; b = 0; cin = 1;
//         #10 $display("Input: a=%b, b=%b, cin=%b, sum=%b, cout=%b", a,b, cin, sum, cout);
//         a = 1; b = 1; cin = 0;
//         #10 $display("Input: a=%b, b=%b, cin=%b, sum=%b, cout=%b", a,b, cin, sum, cout);
//         a = 1; b = 1; cin = 1;
//         #10 $display("Input: a=%b, b=%b, cin=%b, sum=%b, cout=%b", a,b, cin, sum, cout);
        
//         $finish;

// end
// endmodule



`include "lab1_fulladder.v"

module full_adder_tb;
    reg a, b, cin;
    wire sum, cout;

    full_beh uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
);
    // Testbench behavior
    initial begin
        $dumpfile("full_adder_tb.vcd");
        $dumpvars(0, full_adder_tb);
        
        #10;
        a = 0; b = 0; cin = 0;
        #10 $display("Input: a=%b, b=%b, cin=%b, sum=%b, cout=%b", a,b, cin, sum, cout);
        a = 0; b = 0; cin = 1;
        #10 $display("Input: a=%b, b=%b, cin=%b, sum=%b, cout=%b", a,b, cin, sum, cout);
        a = 0; b = 1; cin = 0;
        #10 $display("Input: a=%b, b=%b, cin=%b, sum=%b, cout=%b", a,b, cin, sum, cout);
        a = 0; b = 1; cin = 1;
        #10 $display("Input: a=%b, b=%b, cin=%b, sum=%b, cout=%b", a,b, cin, sum, cout);
        a = 1; b = 0; cin = 0;
        #10 $display("Input: a=%b, b=%b, cin=%b, sum=%b, cout=%b", a,b, cin, sum, cout);
        a = 1; b = 0; cin = 1;
        #10 $display("Input: a=%b, b=%b, cin=%b, sum=%b, cout=%b", a,b, cin, sum, cout);
        a = 1; b = 1; cin = 0;
        #10 $display("Input: a=%b, b=%b, cin=%b, sum=%b, cout=%b", a,b, cin, sum, cout);
        a = 1; b = 1; cin = 1;
        #10 $display("Input: a=%b, b=%b, cin=%b, sum=%b, cout=%b", a,b, cin, sum, cout);
        
        $finish;

end
endmodule