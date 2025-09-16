module piso_4bit_shift_reg_struct(
  input s_lbar,        // s=shift, lbar=~load
  input [3:0] din,     // parallel input
  input clk,
  output q_out,        // serial output (from last stage)
  output [3:0] q_bar
);

  wire [2:0] qin, d, y, x;
  wire not_s_lbar;

  not (not_s_lbar, s_lbar);

  d_flip_flop d3(din[3], clk, qin[2], q_bar[3]);
  and_gate a1(y[2], qin[2], s_lbar);
  and_gate a2(x[2], din[2], not_s_lbar);
  or_gate  o1(d[2], x[2], y[2]);

  d_flip_flop d2(d[2], clk, qin[1], q_bar[2]);
  and_gate a3(y[1], qin[1], s_lbar);
  and_gate a4(x[1], din[1], not_s_lbar);
  or_gate  o2(d[1], x[1], y[1]);

  d_flip_flop d1(d[1], clk, qin[0], q_bar[1]);
  and_gate a5(y[0], qin[0], s_lbar);
  and_gate a6(x[0], din[0], not_s_lbar);
  or_gate  o3(d[0], x[0], y[0]);

  d_flip_flop d0(d[0], clk, q_out, q_bar[0]);

endmodule


module d_flip_flop(input d, input clk, output reg q, output reg q_bar);
  always @(posedge clk) begin
    q     <= d;
    q_bar <= ~d;
  end
endmodule

module and_gate(output y, input a, b);
  assign y = a & b;
endmodule

module or_gate(output y, input a, b);
  assign y = a | b;
endmodule
