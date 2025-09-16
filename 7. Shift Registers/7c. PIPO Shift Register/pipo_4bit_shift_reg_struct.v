module pipo_4bit_shift_reg_struct(
  input [3:0] din,   // parallel inputs
  input clk,
  output [3:0] q,    // parallel outputs
  output [3:0] q_bar
);
  d_flip_flop d0(.d(din[0]), .clk(clk), .q(q[0]), .q_bar(q_bar[0]));
  d_flip_flop d1(.d(din[1]), .clk(clk), .q(q[1]), .q_bar(q_bar[1]));
  d_flip_flop d2(.d(din[2]), .clk(clk), .q(q[2]), .q_bar(q_bar[2]));
  d_flip_flop d3(.d(din[3]), .clk(clk), .q(q[3]), .q_bar(q_bar[3]));
endmodule


// D Flip-Flop
module d_flip_flop(
  input d,
  input clk,
  output reg q,
  output reg q_bar
);
  always @(posedge clk) begin
    q     <= d;
    q_bar <= ~d;
  end
endmodule

