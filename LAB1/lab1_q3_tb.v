// `include "lab1_q3.v"

// module half_struct_tb;
//     reg a, b;
//     wire sum, carry;

//     half_struct uut (.sum(sum),.carry(carry),.a(a),.b(b));
    
//     initial begin
//         $dumpfile("half_stuct.vcd");
//         $dumpvars(0, half_struct_tb);
//         #10;

//         a = 0; b = 0;
//         #10 $display("Input: a=%b, b=%b Output: sum=%b, carry=%b", a, b,sum, carry);
        
//         a = 0; b = 1;
//         #10 $display("Input: a=%b, b=%b Output: sum=%b, carry=%b", a, b,sum, carry);
        
//         a = 1; b = 0;
//         #10 $display("Input: a=%b, b=%b Output: sum=%b, carry=%b", a, b,sum, carry);
        
//         a = 1; b = 1;
//         #10 $display("Input: a=%b, b=%b Output: sum=%b, carry=%b", a, b,sum, carry);
        
//         $finish; 
//         end
// endmodule




// `include "lab1_q3.v"

// module half_RTL_tb;
//     reg a, b;
//     wire sum, carry;

//     half_RTL uut (.sum(sum),.carry(carry),.a(a),.b(b));
    
//     initial begin
//         $dumpfile("half_RTL.vcd");
//         $dumpvars(0, half_RTL_tb);
//         #10;

//         a = 0; b = 0;
//         #10 $display("Input: a=%b, b=%b Output: sum=%b, carry=%b", a, b,sum, carry);
        
//         a = 0; b = 1;
//         #10 $display("Input: a=%b, b=%b Output: sum=%b, carry=%b", a, b,sum, carry);
        
//         a = 1; b = 0;
//         #10 $display("Input: a=%b, b=%b Output: sum=%b, carry=%b", a, b,sum, carry);
        
//         a = 1; b = 1;
//         #10 $display("Input: a=%b, b=%b Output: sum=%b, carry=%b", a, b,sum, carry);
        
//         $finish; 
//         end
// endmodule





`include "lab1_q3.v"

module half_beh_tb;
    reg a, b;
    wire sum, carry;

    half_beh uut (.sum(sum),.carry(carry),.a(a),.b(b));
    
    initial begin
        $dumpfile("half_beh.vcd");
        $dumpvars(0, half_beh_tb);
        #10;

        a = 0; b = 0;
        #10 $display("Input: a=%b, b=%b Output: sum=%b, carry=%b", a, b,sum, carry);
        
        a = 0; b = 1;
        #10 $display("Input: a=%b, b=%b Output: sum=%b, carry=%b", a, b,sum, carry);
        
        a = 1; b = 0;
        #10 $display("Input: a=%b, b=%b Output: sum=%b, carry=%b", a, b,sum, carry);
        
        a = 1; b = 1;
        #10 $display("Input: a=%b, b=%b Output: sum=%b, carry=%b", a, b,sum, carry);
        
        $finish; 
        end
endmodule