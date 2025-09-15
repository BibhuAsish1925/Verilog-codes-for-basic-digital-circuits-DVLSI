module BCD_adder (
  input [3:0] A, B,
  input Cin,
  output reg [3:0] Sum,
  output reg Cout
);
  reg [4:0] sx;

  always @(*) begin
    sx = A + B + Cin;

    if (sx > 9)
      sx = sx + 5'd6;

    Sum  = sx[3:0];
    Cout = sx[4];
  end

endmodule
