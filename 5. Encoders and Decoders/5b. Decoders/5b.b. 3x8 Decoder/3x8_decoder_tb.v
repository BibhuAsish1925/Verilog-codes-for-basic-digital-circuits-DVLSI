module tb1();
  reg [2:0]i; 
  wire [7:0]out;
  //int a;
  
  decoder_3x8 uut(i,out);
  
  initial begin
    
    $dumpfile("dump.vcd"); $dumpvars;
    i=8'b000; 
    #5;
    i=8'b001; 
    #5;
    i=8'b010; 
    #5;
    i=8'b011; 
    #5;
    i=8'b100; 
    #5;
    i=8'b101; 
    #5;
    i=8'b110; 
    #5;
    i=8'b111; 
    #5;
    
    i=8'b011; 
    #5;
    i=8'b110; 
    #5;
    i=8'b010; 
    #5;
    
  end
endmodule