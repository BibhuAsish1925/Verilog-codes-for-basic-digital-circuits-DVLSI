module siso_4bit_shift_reg_behav(
  input din,
  input clk,
  output dout,
  output [3:0] q
);
  reg [3:0] shift;

  always @(negedge clk) begin
    shift <= {din, shift[3:1]};  // left shift
  end

  assign q = shift;
  assign dout = shift[0];
endmodule