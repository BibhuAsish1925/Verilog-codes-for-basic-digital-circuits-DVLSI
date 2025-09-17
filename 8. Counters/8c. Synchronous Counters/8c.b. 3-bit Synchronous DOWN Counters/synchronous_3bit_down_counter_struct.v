module synchronous_3bit_down_counter_struct(
  input clk,
  input rst_n,
  output [2:0] q
);
  wire [2:0] q_int;
  wire reset_n_int,rst_final,t0,t1,t2;

  assign reset_n_int = ~(~q_int[2] & ~q_int[1] & ~q_int[0]);
  assign rst_final = rst_n & reset_n_int;
  assign t0 = 1'b1;
  assign t1 = ~q_int[0];
  assign t2 = ~q_int[0] & ~q_int[1];

  t_ff_struct ff0(.clk(clk), .rst_n(rst_final), .t(t0), .q(q_int[0]));
  t_ff_struct ff1(.clk(clk), .rst_n(rst_final), .t(t1), .q(q_int[1]));
  t_ff_struct ff2(.clk(clk), .rst_n(rst_final), .t(t2), .q(q_int[2]));

  assign q = q_int;
endmodule

module t_ff_struct(
  input clk,
  input rst_n,
  input t,
  output reg q
);
  initial q = 1'b1;
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
      q <= 1'b1;
    else if (t)
      q <= ~q;
  end
endmodule