module tb1();
  reg [3:0]i; 
  wire [1:0]out;
  //int a;
  
  encoder_4x2 uut(i,out);
  
  initial begin
    
    $dumpfile("dump.vcd"); $dumpvars;
    i=4'b0001; 
    #5;
    i=4'b0010; 
    #5;
    i=4'b0100; 
    #5;
    i=4'b1000; 
    #5;
    i=4'b0010; 
    #5;
    i=4'b0100; 
    #5;
    
  end
endmodule