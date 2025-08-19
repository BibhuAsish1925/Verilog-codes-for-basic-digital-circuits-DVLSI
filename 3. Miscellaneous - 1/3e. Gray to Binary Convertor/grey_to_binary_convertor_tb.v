module tb();
  reg  [3:0] gray;
  wire [3:0] bin;

  gray_binary_conv uut (gray, bin);

  initial begin
    
    $dumpfile("gray_conv.vcd");
    $dumpvars(0, tb);

    gray = 4'b1010; #10;
    gray = 4'b1000; #10; 
    gray = 4'b0101; #10;  
    gray = 4'b1110; #10;
    gray = 4'b0010; #10; 
    $finish;
    
  end
endmodule