module mod6_counter_behav (
    input clk,
    input rst_n,          
    output reg [2:0] q
);

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            q <= 3'b000;          
        else if (q == 3'b101)    
            q <= 3'b000;
        else
            q <= q + 1;           
    end

endmodule