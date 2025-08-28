module mod_30_counter (
    input clk,
    input rst_n,      // active low external reset
  output reg [4:0] q
);

    wire reset; // internal reset from NAND gate

  assign reset = ~(q[4]&q[3]&q[2]&q[1]&~q[0]);  

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) 
            q <= 5'b00000;          // async reset
        else if (!reset) 
            q <= 5'b00000;          // reset when count=10
        else 
            q <= q + 1;            // increment
    end

endmodule
