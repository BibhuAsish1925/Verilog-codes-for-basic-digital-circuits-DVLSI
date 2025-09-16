module T_latch_behav(
    input t, clk,
    output reg q,
    output q_bar
);
    always @(t or clk) begin
        if (clk) begin
            if (t)
                q <= ~q;
        end
    end
    
    assign q_bar = ~q;
    
endmodule