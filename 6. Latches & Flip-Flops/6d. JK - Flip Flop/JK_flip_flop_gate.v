module JK_flip_flop_gate(
    input j,k,clk,
    output q,
    output q_bar
);
    wire j_clk,k_clk,q_m,q_m_bar;

    nand (j_clk, j, clk, q_bar);
    nand (k_clk, k, clk, q);
    nand (q_m, j_clk, q_m_bar);
    nand (q_m_bar, k_clk, q_m);

    nand (q, q_m, q_bar);
    nand (q_bar, q_m_bar, q);
    
endmodule
