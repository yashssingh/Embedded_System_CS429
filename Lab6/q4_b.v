module SRAM_Cell (input wire Write, Read, Data, output wire Q); wire nQ;
    assign (strong0, pull1) Q = Write ? Data : (Read ? 1'bz : nQ);
    assign (strong0, pull1) nQ = Write ? ~Data : (Read ? 1'bz : Q);
endmodule
module Lab6_q4_2_tb;
    reg Write, Read, Data;
    wire Q;
SRAM_Cell uwu (.Write(Write), .Read(Read), .Data(Data), .Q(Q));
    initial begin
        $dumpfile("Lab6_q4_2.vcd");
        $dumpvars(0, Lab6_q4_2_tb);
        Write = 0; Read = 0; Data = 0;
        #10 Write = 1; Data = 1;
        #10 Write = 0; Read = 1;
        #10 Read = 0;
        #10 Write = 1; Data = 0;
        #10 Write = 0; Read = 1;
        #10 $finish;
end
initial begin
$monitor("At time %d, Write = %b, Read = %b, Data = %b, Q = %b", $time, Write, Read, Data, Q);
    end
endmodule
