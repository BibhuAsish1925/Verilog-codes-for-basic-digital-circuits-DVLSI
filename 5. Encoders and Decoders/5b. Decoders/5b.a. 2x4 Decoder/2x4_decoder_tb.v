module tb1();
  reg [1:0]i; 
  wire [3:0]out;
  //int a;
  
  decoder_2x4 uut(i,out);
  
  initial begin
    
    $dumpfile("dump.vcd"); $dumpvars;
    i=2'b00; 
    #5;
    i=2'b01; 
    #5;
    i=2'b10; 
    #5;
    i=2'b11; 
    #5;
    i=2'b10; 
    #5;
    i=2'b01; 
    #5;
    
  end
endmodule