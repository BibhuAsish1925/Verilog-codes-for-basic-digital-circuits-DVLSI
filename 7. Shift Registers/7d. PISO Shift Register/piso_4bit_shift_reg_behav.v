module piso_4bit_shift_reg_behav(
  input clk,
  input s_lbar,          // 1=shift, 0=load
  input [3:0] din,
  output reg q_out,
  output reg [3:0] q_bar
);
  reg [3:0] shift_reg;

  always @(posedge clk) begin
    if (~s_lbar)  // load mode
      shift_reg <= din;
    else          // shift mode
      shift_reg <= {1'b0, shift_reg[3:1]};
  end

  always @(*) begin
    q_out  = shift_reg[0];
    q_bar  = ~shift_reg;
  end
endmodule