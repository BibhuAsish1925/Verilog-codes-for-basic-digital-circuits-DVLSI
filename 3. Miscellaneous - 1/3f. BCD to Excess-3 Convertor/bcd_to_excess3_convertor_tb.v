module tb1;
  reg  [3:0] b;
  wire [3:0] x;

  bcd_x3_conv uut(b, x);

  initial begin
    
    $dumpfile("dump.vcd"); $dumpvars;
   
    b = 4'b0000; #10;
    b = 4'b0001; #10;
    b = 4'b0010; #10;
    b = 4'b0011; #10;
    b = 4'b0100; #10;
    b = 4'b0101; #10;
    b = 4'b0110; #10;
    b = 4'b0111; #10;
    b = 4'b1000; #10;

  end
endmodule
