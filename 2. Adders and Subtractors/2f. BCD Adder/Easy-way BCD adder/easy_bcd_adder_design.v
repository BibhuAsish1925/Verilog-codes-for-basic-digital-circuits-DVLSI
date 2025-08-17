module bcd_adder (
  input [3:0]A,B,
  input Cin,
  output [3:0]Sum,
  output Cout
);
  reg [4:0]sx;

  always @(*) begin
    sx = A + B + Cin;

    if (sx > 9)
      sx = sx + 5'd6;  
  end

  assign Sum  = sx[3:0];
  assign Cout = sx[4];       
endmodule