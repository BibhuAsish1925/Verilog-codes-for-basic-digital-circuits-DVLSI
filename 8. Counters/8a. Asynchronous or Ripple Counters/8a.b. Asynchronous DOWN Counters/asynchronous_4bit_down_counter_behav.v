module asynchronous_4bit_down_counter_behav(
  input clk, t,
  output reg [3:0] q
);
  initial q = 4'b1111;  // start from max 

  always @(posedge clk)
    if (t) q[0] <= ~q[0];

  always @(posedge q[0])
    if (t) q[1] <= ~q[1];

  always @(posedge q[1])
    if (t) q[2] <= ~q[2];

  always @(posedge q[2])
    if (t) q[3] <= ~q[3];
endmodule
