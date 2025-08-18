module tb1();
  reg [7:0]i; 
  wire [2:0]out;
  //int a;
  
  encoder_8x3 uut(i,out);
  
  initial begin
    
    $dumpfile("dump.vcd"); $dumpvars;
    i=8'b00000001; 
    #5;
    i=8'b00000010; 
    #5;
    i=8'b00000100; 
    #5;
    i=8'b00001000; 
    #5;
    i=8'b00010000; 
    #5;
    i=8'b00100000; 
    #5;
    i=8'b01000000; 
    #5;
    i=8'b10000000; 
    #5;
    
  end
endmodule