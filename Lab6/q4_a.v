module SRAM_Cell (input wire Write, Read, Data, output wire Q); wire nQ;
    nmos n1 (Q, Data, Write);
    nmos n2 (nQ, ~Data, Write);
    pmos p1 (Q, nQ, ~Read);
    pmos p2 (nQ, Q, ~Read);
    endmodule
module Lab6_q4_tb;
    reg Write, Read, Data;
    wire Q;
SRAM_Cell uwu (.Write(Write), .Read(Read), .Data(Data), .Q(Q));
    initial begin
        $dumpfile("Lab6_q4.vcd");
        $dumpvars(0, Lab6_q4_tb);
        Write = 0; Read = 0; Data = 0;
        #10 Write = 1; Data = 1;
        #10 Write = 0; Read = 1;
        #10 Read = 0;
        #10 Write = 1; Data = 0;
        #10 Write = 0; Read = 1;
        #10 $finish;
end
    initial begin
$monitor("At time %d, Write = %b, Read = %b, Data = %b, Q = %b",$time, Write, Read, Data, Q);
    end
endmodule