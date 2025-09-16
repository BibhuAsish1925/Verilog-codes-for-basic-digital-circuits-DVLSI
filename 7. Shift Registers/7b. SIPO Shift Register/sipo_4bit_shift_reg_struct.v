module sipo_4bit_shift_reg_struct(
  input din,
  input clk,
  output [3:0] q,      // Parallel outputs from all stages
  output [3:0] q_bar
);
  wire [3:0] q_int;

  d_flip_flop d0(.d(din),      .clk(clk), .q(q_int[0]), .q_bar(q_bar[0]));
  d_flip_flop d1(.d(q_int[0]), .clk(clk), .q(q_int[1]), .q_bar(q_bar[1]));
  d_flip_flop d2(.d(q_int[1]), .clk(clk), .q(q_int[2]), .q_bar(q_bar[2]));
  d_flip_flop d3(.d(q_int[2]), .clk(clk), .q(q_int[3]), .q_bar(q_bar[3]));

  assign q = q_int;
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
