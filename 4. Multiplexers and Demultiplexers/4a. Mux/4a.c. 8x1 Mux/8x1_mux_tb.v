module mux_8x1_tb();
  reg [7:0]i;
  reg [2:0]s; 
  wire out;
  //int a;
  
  mux_8x1 uut(.i(i),.s(s),.out(out));
  
  initial begin
    
    i = 8'b00000001; s = 3'b000; #100;
    i = 8'b00000010; s = 3'b001; #100;
    i = 8'b00000100; s = 3'b010; #100;
    i = 8'b00001000; s = 3'b011; #100;
    i = 8'b00010000; s = 3'b100; #100;
    i = 8'b00100000; s = 3'b101; #100;
    i = 8'b01000000; s = 3'b110; #100;
    i = 8'b10000000; s = 3'b111; #100;
    
    $finish;

  end
endmodule
