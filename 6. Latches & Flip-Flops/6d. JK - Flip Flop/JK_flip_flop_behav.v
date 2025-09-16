module JK_flip_flop_behav(
    input j,k,clk,
    output reg q,
    output q_bar
);

    always @(posedge clk) begin
        case ({j, k})
            2'b00: q <= q;
            2'b01: q <= 1'b0;
            2'b10: q <= 1'b1;
            2'b11: q <= ~q;
        endcase
    end
    
    assign q_bar = ~q;
endmodule
