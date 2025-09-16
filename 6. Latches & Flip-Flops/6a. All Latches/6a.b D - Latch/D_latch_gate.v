module D_latch_gate(
    input d, clk,
    output q,
    output q_bar
);
    wire d_bar,s,r,q_int,q_bar_int;

    nand (d_bar, d, d); // inverter for D
    nand (s, d, clk);
    nand (r, d_bar, clk);
    nand (q_int, s, q_bar_int);
    nand (q_bar_int, r, q_int);

    assign q = q_int;
    assign q_bar = q_bar_int;
endmodule