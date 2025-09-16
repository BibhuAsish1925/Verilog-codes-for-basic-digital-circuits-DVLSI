module RS_latch_gate (
    input s, r,
    output q, q_bar
);
    nand (q, s, q_bar);
    nand (q_bar, r, q);
endmodule