module tb();
  reg [9:0] in;
  wire [3:0] out;
  
  decimal_bcd_encoder uut (in,out);
  
  initial begin
    
    $dumpfile("dump.vcd"); $dumpvars;
    
    in=10'b000000100; #10
    in=10'b100000000; #10
    in=10'b000010000; #10
    in=10'b000001010; #10
    
    $finish;
  end
endmodule
