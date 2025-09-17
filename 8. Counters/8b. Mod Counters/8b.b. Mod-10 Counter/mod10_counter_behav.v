module mod10_counter_behav(
    input clk, rst_n,
    output reg [3:0] q
);
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            q <= 4'b0000;
        else if (q == 4'b1001)
            q <= 4'b0000;
        else
            q <= q + 1;
    end
endmodule
