module siso_4bit_shift_reg_struct(
  input din,
  input clk,
  output dout,
  output [3:0] q
);
  wire [3:0] q_int;
  wire [3:0] qbar_int;

  d_flip_flop_behav d3(.d(din),.clk(clk),.q(q_int[3]),.q_bar(qbar_int[3]));
  d_flip_flop_behav d2(.d(q_int[3]),.clk(clk),.q(q_int[2]),.q_bar(qbar_int[2]));
  d_flip_flop_behav d1(.d(q_int[2]),.clk(clk),.q(q_int[1]),.q_bar(qbar_int[1]));
  d_flip_flop_behav d0(.d(q_int[1]),.clk(clk),.q(q_int[0]),.q_bar(qbar_int[0]));

  assign dout = q_int[0];
  assign q = q_int;
endmodule


module d_flip_flop_behav(
  input d,
  input clk,
  output reg q,
  output reg q_bar
);
  always @(posedge clk) begin
    q <= d;
    q_bar <= ~d;
  end
endmodule