module tb1();
  reg [7:0]i;
  reg [2:0]s; 
  wire out;
  //int a;
  
  mux_8x1 uut(i,s,out);
  
  initial begin
    
    $dumpfile("dump.vcd"); $dumpvars;
    
    i = 8'b00000001; s = 3'b000; #10;
    i = 8'b00000010; s = 3'b001; #10;
    i = 8'b00000100; s = 3'b010; #10;
    i = 8'b00001000; s = 3'b011; #10;
    i = 8'b00010000; s = 3'b100; #10;
    i = 8'b00100000; s = 3'b101; #10;
    i = 8'b01000000; s = 3'b110; #10;
    i = 8'b10000000; s = 3'b111; #10;

  end
endmodule