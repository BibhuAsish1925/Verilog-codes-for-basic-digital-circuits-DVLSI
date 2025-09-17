module Synchronous_4bit_up_down_counter_struct (
  input t, clk, rst_n,
  input mode,       // 0 = Up, 1 = Down
  output [3:0] qout
);
  wire [3:0] qinx, a, b, qx, q_barx;
  wire mode_bar;

  assign mode_bar = ~mode;

  T_flip_flop_struct tff0(.t(t), .clk(clk), .rst_n(rst_n), .q(qx[0]), .q_bar(q_barx[0]));
  assign a[0] = qx[0] & mode_bar;
  assign b[0] = q_barx[0] & mode;
  or_gate o1(qinx[0], a[0], b[0]);

  T_flip_flop_struct tff1(.t(qinx[0]), .clk(clk), .rst_n(rst_n), .q(qx[1]), .q_bar(q_barx[1]));
  assign a[1] = qx[0] & qx[1] & mode_bar;
  assign b[1] = q_barx[0] & q_barx[1] & mode;
  or_gate o2(qinx[1], a[1], b[1]);

  T_flip_flop_struct tff2(.t(qinx[1]), .clk(clk), .rst_n(rst_n), .q(qx[2]), .q_bar(q_barx[2]));
  assign a[2] = qx[0] & qx[1] & qx[2] & mode_bar;
  assign b[2] = q_barx[0] & q_barx[1] & q_barx[2] & mode;
  or_gate o3(qinx[2], a[2], b[2]);

  T_flip_flop_struct tff3(.t(qinx[2]), .clk(clk), .rst_n(rst_n), .q(qx[3]), .q_bar(q_barx[3]));
  assign a[3] = qx[0] & qx[1] & qx[2] & qx[3] & mode_bar;
  assign b[3] = q_barx[0] & q_barx[1] & q_barx[2] & q_barx[3] & mode;
  or_gate o4(qinx[3], a[3], b[3]);

  assign qout = qx;
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
    else
      q <= q;
  end

  assign q_bar = ~q;
endmodule

module or_gate(y,a,b);
  input a,b;
  output y;
  assign y = a | b;
endmodule