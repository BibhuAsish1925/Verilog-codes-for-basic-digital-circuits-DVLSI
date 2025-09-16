module T_latch_gate(
    input wire t, clk,
    output wire q,
    output wire q_bar
);
    wire j, k;

    assign j = t;
    assign k = t;

    JK_latch_gate jkff (.j(j),.k(k),.clk(clk),.q(q),.q_bar(q_bar));
endmodule

module JK_latch_gate(
    input wire j, k, clk,
    output wire q,
    output wire q_bar
);
    wire s, r, q_int, q_bar_int, j_clk, k_clk;

    nand (j_clk, j, clk);
    nand (k_clk, k, clk);
    nand (q_int, j_clk, q_bar_int);
    nand (q_bar_int, k_clk, q_int);

    assign q = q_int;
    assign q_bar = q_bar_int;
endmodule