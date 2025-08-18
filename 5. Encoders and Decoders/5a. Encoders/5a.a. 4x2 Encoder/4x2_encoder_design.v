// whichever model you want just remove /* */ and change b/w output and output reg

module encoder_4x2(
  input [3:0]i,
  output reg [1:0]out
);
  
  always @(*)
    begin
      case(i)
        4'b0001: begin out=2'b00; end
        4'b0010: begin out=2'b01; end
        4'b0100: begin out=2'b10; end
        4'b1000: begin out=2'b11; end
      endcase
    end
  
endmodule
  