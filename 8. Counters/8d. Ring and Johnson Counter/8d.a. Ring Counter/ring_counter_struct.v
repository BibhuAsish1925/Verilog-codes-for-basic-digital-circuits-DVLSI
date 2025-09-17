module ring_counter_struct(
  input clk,
  input rst_n,
  output [3:0] q
);
  wire [3:0] q_int, q_bar;

  T_ff tff0(.t(q_int[3]), .clk(clk), .rst_n(rst_n), .init(1'b1), .q(q_int[0]), .q_bar(q_bar[0]));
  T_ff tff1(.t(q_int[0]), .clk(clk), .rst_n(rst_n), .init(1'b0), .q(q_int[1]), .q_bar(q_bar[1]));
  T_ff tff2(.t(q_int[1]), .clk(clk), .rst_n(rst_n), .init(1'b0), .q(q_int[2]), .q_bar(q_bar[2]));
  T_ff tff3(.t(q_int[2]), .clk(clk), .rst_n(rst_n), .init(1'b0), .q(q_int[3]), .q_bar(q_bar[3]));

  assign q = q_int;
endmodule

module T_ff(
  input t, clk, rst_n, init,
  output reg q, output reg q_bar
);
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      q <= init;
      q_bar <= ~init;
    end else if (t) begin
      q <= 1;
      q_bar <= 0;
    end else begin
      q <= 0;
      q_bar <= 1;
    end
  end
endmodule