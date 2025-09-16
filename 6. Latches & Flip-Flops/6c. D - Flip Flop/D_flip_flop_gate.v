module D_flip_flop_gate(
    input d,clk,
    output q,q_bar
);
    wire r, s;
    assign s = d;
    assign r = ~d;

    wire s_g, r_g;
    wire qa, qb;

    nand (s_g, s, clk);
    nand (r_g, r, clk);
    nand (qa, s_g, qb);
    nand (qb, r_g, qa);

    assign q = qa;
    assign q_bar = qb;

endmodule