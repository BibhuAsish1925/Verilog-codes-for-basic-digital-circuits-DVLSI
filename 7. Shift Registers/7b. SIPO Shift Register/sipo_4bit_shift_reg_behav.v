module sipo_4bit_shift_reg_behav(
  input din,
  input clk,
  output reg [3:0] q
);
  always @(posedge clk) begin
    q <= {q[2:0], din};   // shift left and then insert din
  end
endmodule