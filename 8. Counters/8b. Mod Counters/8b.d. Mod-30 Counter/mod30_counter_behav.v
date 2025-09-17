module mod30_counter_behav(
    input clk, rst_n,
    output reg [4:0] q
);
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            q <= 5'b00000;
        else if (q == 5'd29)
            q <= 5'b00000;
        else
            q <= q + 1;
    end
endmodule