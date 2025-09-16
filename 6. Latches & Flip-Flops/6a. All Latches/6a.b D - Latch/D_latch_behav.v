module D_flip_flop_behav(
    input wire d, clk,
    output reg q,
    output wire q_bar
);
    always @(posedge clk) begin
        q <= d;
    end
    assign q_bar = ~q;
endmodule