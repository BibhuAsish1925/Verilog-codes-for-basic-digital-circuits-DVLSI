module asynchronous_4bit_down_counter_struct(
  input t, clk,
  output [3:0] q, q_bar
);
  wire [3:0] qint, qbint;

  t_flip_flop_struct tff0(t, clk,     qint[0], qbint[0]);
  t_flip_flop_struct tff1(t, qint[0], qint[1], qbint[1]);
  t_flip_flop_struct tff2(t, qint[1], qint[2], qbint[2]);
  t_flip_flop_struct tff3(t, qint[2], qint[3], qbint[3]);

  assign q = qint;
  assign q_bar = qbint;
endmodule


module t_flip_flop_struct(
  input t, clk,
  output reg q, q_bar
);
  initial begin
    q = 1;  
    q_bar = 0;
  end

  always @(posedge clk) begin
    if (t) begin
      q <= ~q;
      q_bar <= ~q_bar;
    end
  end
endmodule
