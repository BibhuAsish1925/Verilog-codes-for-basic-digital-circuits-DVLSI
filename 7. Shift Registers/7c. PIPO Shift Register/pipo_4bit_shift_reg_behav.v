module pipo_4bit_shift_reg_behav(
  input [3:0] din,
  input clk,
  output reg [3:0] q
);

  always @(posedge clk) begin
    q <= din;   
  end

endmodule
