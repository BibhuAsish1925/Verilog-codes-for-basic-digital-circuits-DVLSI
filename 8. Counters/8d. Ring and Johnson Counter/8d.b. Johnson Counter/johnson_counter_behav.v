module johnson_counter_behav(
  input clk,
  input rst_n,
  output reg [3:0] q
);
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
      q <= 4'b0000;  
    else
      q <= {~q[0], q[3:1]};  // shift right, MSB gets inverted LSB
  end
endmodule