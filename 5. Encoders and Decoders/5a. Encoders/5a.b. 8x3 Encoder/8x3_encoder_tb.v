module encoder_8x3_tb();
 reg [7:0]i; 
  wire [2:0]out;
  //int a;
  
  encoder_8x3 uut(.i(i),.out(out));
  
  initial begin
   
    i=8'b00000001; 
    #100;
    i=8'b00000010; 
    #100;
    i=8'b00000100; 
    #100;
    i=8'b00001000; 
    #100;
    i=8'b00010000; 
    #100;
    i=8'b00100000; 
    #100;
    i=8'b01000000; 
    #100;
    i=8'b10000000; 
    #100;
    $finish;
  end
endmodule
