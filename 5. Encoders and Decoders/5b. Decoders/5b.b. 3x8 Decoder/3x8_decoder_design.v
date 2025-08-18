module decoder_3x8(
  input [2:0]i,
  output reg [7:0]out
);
  
  always @(*)
    begin
      
      //behavioral using if-else
      if(i==3'b000)
        begin 
          out=8'b00000001; 
        end
      else if(i==3'b001)
        begin 
          out=8'b00000010; 
        end
      else if(i==3'b010)
        begin 
          out=8'b00000100; 
        end
      else if(i==3'b011)
        begin 
          out=8'b00001000; 
        end
      else if(i==3'b100)
        begin 
          out=8'b00010000; 
        end
      else if(i==3'b101)
        begin 
          out=8'b00100000; 
        end
      else if(i==3'b110)
        begin 
          out=8'b01000000; 
        end
      else if(i==3'b111)
        begin 
          out=8'b10000000; 
        end
      
    end
endmodule
  