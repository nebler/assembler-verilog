/*We consider a 4-bit shift register consisting of 4 positive edge-triggered flip-flops (ff0,…,ff3)
connected in series, so that the output of one storage element (flip-flop) feeds into the input
of the next. The storage elements are controlled by a common clock signal:
Consider e.g. the flip-flops ff0 and ff1. The input to ff0 is the input to the shift register. The
input to ff1 is the output of ff0, which is also the current value of ff0. On a positive clock
edge, ff0 will capture its input and ff1 will capture the current value of ff0.
If all the flip flops start out reset to 0 and we hold the input of the shift register at 1, then a
positive clock edge will cause ff0 to capture a 1. On the second positive clock edge, ff1 will
capture a 1 because it has sampled the output of ff0. On each successive positive clock edge,
the 1 will “shift” to the next flip flop in the chain until it appears at the output of the shift
register, which is the output of ff3 in the 4-bit shift register shown above.
Insert the missing assignment statements into the procedural block of the Verilog model of
the 4-bit shift register below.*/


module shiftRegister(
 input shift_in,
 input clock,
 output shift_out
);
 reg bit0;
 reg bit1;
 reg bit2;
 reg bit3;
 assign shift_out = bit3;
always @(posedge clock) begin
    bit3 <= bit2;
    bit2 <= bit1;
    bit1 <= bit0;
    bit0 <= shift_in;
 end
 endmodule // shiftRegister