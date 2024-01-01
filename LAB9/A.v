module for_reverse;
    reg [15:0] number = 16'hABCD;
    reg [15:0] reversed_number = 0;
    integer i;
    initial begin
        $dumpfile("reverse_for.vcd");
        $dumpvars(0, for_reverse);
        for(i = 0; i < 4; i = i + 1) begin
            reversed_number = (reversed_number << 4) | (number & 4'hF);
            number = number >> 4;
        end
        $display("Reversed number: %h", reversed_number);
        #10 $finish;
    end
endmodule


