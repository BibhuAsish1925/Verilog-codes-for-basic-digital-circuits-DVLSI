module Asynchronous_4bit_up_down_counter_behav(
  input clk, t, mode,   // mode = 0 => UP, mode = 1 => DOWN
  output reg [3:0] q
);
  initial q = 4'b0000;

  always @(negedge clk) begin
    if (t) begin
      if (mode == 1'b0)
        q <= q + 1;   // up
      else
        q <= q - 1;   // down
    end
  end
endmodule