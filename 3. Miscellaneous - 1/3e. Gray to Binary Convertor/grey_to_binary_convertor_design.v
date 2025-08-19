module gray_binary_conv(
  input  [3:0] gray,
  output [3:0] bin
);

  assign bin[3] = gray[3];                
  assign bin[2] = gray[2] ^ bin[3];        
  assign bin[1] = gray[1] ^ bin[2];
  assign bin[0] = gray[0] ^ bin[1];

endmodule