// whichever model you want just remove /* */ and change b/w output and output reg

module decoder_2x4(
  input [1:0]i,
  output reg [3:0]out
);
  
  always @(*)
    begin
      case(i)
        2'b00: begin out=4'b0001; end
        2'b01: begin out=4'b0010; end
        2'b10: begin out=4'b0100; end
        2'b11: begin out=4'b1000; end
      endcase
    end
  
endmodule
  