// whichever model you want just remove /* */ and change b/w output and output reg

module encoder_8x3(
  input [7:0]i,
  output reg [2:0]out
);
  
  always @(*)
    begin
      
      //behavioral using if-else
      if(i==8'b00000001)
        begin 
          out=3'b000; 
        end
      else if(i==8'b00000010)
        begin 
          out=3'b001; 
        end
      else if(i==8'b00000100)
        begin 
          out=3'b010; 
        end
      else if(i==8'b00001000)
        begin 
          out=3'b011; 
        end
      else if(i==8'b00010000)
        begin 
          out=3'b100; 
        end
      else if(i==8'b00100000)
        begin 
          out=3'b101; 
        end
      else if(i==8'b01000000)
        begin 
          out=3'b110; 
        end
      else if(i==8'b10000000)
        begin 
          out=3'b111; 
        end
  
  
      //behavioral using case-endcase
      /*case(i)
        8'b00000001: begin out=3'b000; end
        8'b00000010: begin out=3'b001; end
        8'b00000100: begin out=3'b010; end
        8'b00001000: begin out=3'b011; end
        8'b00010000: begin out=3'b100; end
        8'b00100000: begin out=3'b101; end
        8'b01000000: begin out=3'b110; end
        8'b10000000: begin out=3'b111; end
      endcase*/
      
      
    end
endmodule
  