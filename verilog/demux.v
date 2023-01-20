module demux(
    input [3:0] in, // 4-bit input signal
    input [1:0] select, // 2-bit select signal to choose which output to drive
    output reg [3:0] out0, out1, out2, out3 // 4 4-bit output signals
);
    always @* begin
        // use of <= because it is unblocking
        case(select)
            2'b00: out0 <= in;
            2'b01: out1 <= in;
            2'b10: out2 <= in;
            2'b11: out3 <= in;
        endcase
    end
endmodule