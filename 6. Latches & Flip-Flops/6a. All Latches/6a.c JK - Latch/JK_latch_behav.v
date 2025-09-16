module JK_latch_behav(
    input wire j, k, clk,
    output reg q,
    output wire q_bar
);
    always @(j or k or clk) begin
        if (clk) begin
            case ({j,k})
                2'b00: q <= q;
                2'b01: q <= 1'b0;
                2'b10: q <= 1'b1;
                2'b11: q <= ~q;
            endcase
        end
    end
    assign q_bar = ~q;
endmodule