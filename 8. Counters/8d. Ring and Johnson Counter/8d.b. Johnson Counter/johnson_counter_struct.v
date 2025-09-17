module johnson_counter_struct (
  input clk,
  input rst_n,
  output [3:0] q
);
  wire q0, q1, q2, q3;
  wire t0, t1, t2, t3;

  assign t0 = q1 ^ q0;
  assign t1 = q2 ^ q1;
  assign t2 = q3 ^ q2;
  assign t3 = (~q0) ^ q3;

  t_ff ff0(.t(t0), .clk(clk), .rst_n(rst_n), .q(q0));
  t_ff ff1(.t(t1), .clk(clk), .rst_n(rst_n), .q(q1));
  t_ff ff2(.t(t2), .clk(clk), .rst_n(rst_n), .q(q2));
  t_ff ff3(.t(t3), .clk(clk), .rst_n(rst_n), .q(q3));

  assign q = {q3, q2, q1, q0};
endmodule

module t_ff (
  input t,
  input clk,
  input rst_n,
  output reg q
);
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
      q <= 1'b0;
    else if (t)
      q <= ~q;
  end
endmodule
