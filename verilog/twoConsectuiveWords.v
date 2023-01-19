module count_same_consecutive_words( output reg [9:0] num_same_cons_words,
 input [7:0] word, input enable,
 input reset, input clk );

 reg [7:0] word_prev;

 always @( posedge clk or posedge reset )
 begin
 if( reset )
 begin
    num_same_cons_words <= 10'b0;
    word_prev <= 8'b0;
    end
 else if( enable )
 begin
    if( word == word_prev )
    begin
        num_same_cons_words <= num_same_cons_words + 1;
        word_prev <= word;
    end 
 end
 end
endmodule
