module synchronous_2bit_up_counter_behav (
  input clk, rst_n,
  output reg [1:0] q
);
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
      q <= 2'b00;          
    else
      q <= q + 1;         
endmodule
