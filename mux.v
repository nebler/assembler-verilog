module mux(
    input [3:0] in0, in1, in2, in3, // 4 4-bit input signals
    input [1:0] select, // 2-bit select signal to choose which input to output
    output reg [3:0] out // 4-bit output signal
);
    always @* begin
        case(select)
            2'b00: out <= in0;
            2'b01: out <= in1;
            2'b10: out <= in2;
            2'b11: out <= in3;
        endcase
    end
endmodule