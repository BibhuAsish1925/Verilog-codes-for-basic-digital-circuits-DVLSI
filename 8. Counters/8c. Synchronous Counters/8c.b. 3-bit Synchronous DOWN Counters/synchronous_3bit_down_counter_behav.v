module synchronous_3bit_down_counter_behav(
  input clk,
  input rst_n,
  output reg [2:0] q
);
  initial q = 3'b111;

  always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
      q <= 3'b111;
    else if (q == 3'b000)
      q <= 3'b111;
    else
      q <= q - 1;
  end
endmodule
