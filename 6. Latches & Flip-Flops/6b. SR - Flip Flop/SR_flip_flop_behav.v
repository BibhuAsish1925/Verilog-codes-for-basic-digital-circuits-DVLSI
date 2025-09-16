module SR_flip_flop_behav(
    input  s, r, clk,
    output reg q,
    output q_bar
);
    always @(posedge clk) begin
        case ({s,r})
            2'b01: q <= 1'b0;
            2'b10: q <= 1'b1;
            2'b11: q <= 1'bx;
            default: q <= q;
        endcase
    end
    assign q_bar = ~q;
endmodule