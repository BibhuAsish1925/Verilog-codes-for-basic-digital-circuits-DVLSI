module T_flip_flop_behav(
    input wire t, clk, pst, clr,
    output reg q,
    output wire q_bar
);
    initial begin
        q = 0;
    end

    always @(negedge clr or negedge pst or negedge clk) begin
        if (!clr)
            q <= 1'b0;
        else if (!pst)
            q <= 1'b1;
        else if (t)
            q <= ~q;
    end

    assign q_bar = ~q;
endmodule
