module Synchronous_4bit_up_down_counter_behav (
  input clk, rst_n,
  input mode,       // 0 = Up, 1 = Down
  output reg [3:0] q
);
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
      q <= 4'b0000;                
    else if (mode == 1'b0)
      q <= q + 1;    
    else
      q <= q - 1;  
  end
endmodule