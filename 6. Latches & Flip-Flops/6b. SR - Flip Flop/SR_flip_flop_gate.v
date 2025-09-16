module SR_flip_flop_gate(
    input s, r, clk,
    output q,
    output q_bar
);
    wire s_g, r_g;
    wire qa, qb;

    nand (s_g, s, clk);
    nand (r_g, r, clk);
    nand (qa, s_g, qb);
    nand (qb, r_g, qa);

    assign q = qa;
    assign q_bar = qb;
endmodule