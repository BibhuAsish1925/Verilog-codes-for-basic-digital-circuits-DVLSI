module decimal_bcd_encoder(
  input[9:0]in,
  output [3:0] out
);
  
  assign out[3]=in[8]|in[9];
  assign out[2]=in[4]|in[5]|in[6]|in[7];
  assign out[1]=in[2]|in[3]|in[6]|in[7];
  assign out[0]=in[1]|in[3]|in[5]|in[7]|in[9];

endmodule

