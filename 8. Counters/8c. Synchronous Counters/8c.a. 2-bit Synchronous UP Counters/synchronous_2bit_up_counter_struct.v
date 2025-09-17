module synchronous_2bit_up_counter_struct (
  input t, clk, rst_n,
  output [1:0] qout
);
  wire q0, q1, q0_bar, q1_bar, t1;

  T_flip_flop_struct tff0(.t(t), .clk(clk), .rst_n(rst_n), .q(q0), .q_bar(q0_bar));

  assign t1 = q0 & t;
  T_flip_flop_struct tff1(.t(t1), .clk(clk), .rst_n(rst_n), .q(q1), .q_bar(q1_bar));

  assign qout = {q1, q0};
endmodule


module T_flip_flop_struct(
  input t, clk, rst_n,
  output reg q,
  output q_bar
);
  initial q = 0;

  always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
      q <= 0;
    else if (t)
      q <= ~q;
  end

  assign q_bar = ~q;
endmodule