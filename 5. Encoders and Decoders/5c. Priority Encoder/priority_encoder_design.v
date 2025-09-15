module priority_encoder (
  input  [3:0] in,
  output [1:0] out,
  output valid
);

  // Priority encoding logic
  assign out[1] = in[2] | in[3];
  assign out[0] = in[3] | ((~in[2]) & in[1]);

  // Valid bit: high if any input is 1
  assign valid = |in;  // Equivalent to (in[0] | in[1] | in[2] | in[3])

endmodule
