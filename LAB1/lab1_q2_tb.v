`include "lab1_q2.v"
module system2_tb;

reg va, vb, vc;
wire outa;
    
    system2 uut (.outa(outa),.va(va),.vb(vb),.vc(vc));

    initial begin
        $dumpfile("lab1_q2_tb.vcd");
        $dumpvars(0, system2_tb);
        #10;

        va = 0; vb = 0; vc = 0;
        #10 $display("Input: va=%b, vb=%b, vc=%b, output: outa=%b", va, vb,vc, outa);

        va = 0; vb = 0; vc = 1;
        #10 $display("Input: va=%b, vb=%b, vc=%b, output: outa=%b", va, vb,vc, outa);

        va = 0; vb = 1; vc = 0;
        #10 $display("Input: va=%b, vb=%b, vc=%b, output: outa=%b", va, vb,vc, outa);

        va = 0; vb = 1; vc = 1;
        #10 $display("Input: va=%b, vb=%b, vc=%b, output: outa=%b", va, vb,vc, outa);

        va = 1; vb = 0; vc = 0;
        #10 $display("Input: va=%b, vb=%b, vc=%b, output: outa=%b", va, vb,vc, outa);

        va = 1; vb = 0; vc = 1;
        #10 $display("Input: va=%b, vb=%b, vc=%b, output: outa=%b", va, vb,vc, outa);

        va = 1; vb = 1; vc = 0;
        #10 $display("Input: va=%b, vb=%b, vc=%b, output: outa=%b", va, vb,vc, outa);

        va = 1; vb = 1; vc = 1;
        #10 $display("Input: va=%b, vb=%b, vc=%b, output: outa=%b", va, vb,vc, outa);

        $finish; 
        
        end
endmodule