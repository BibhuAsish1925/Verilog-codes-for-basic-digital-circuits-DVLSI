module gray_binary_conv_tb();

  reg  [3:0] gray;
  wire [3:0] bin;

  gray_binary_conv uut (gray, bin);

  initial begin

    gray = 4'b1010; #100;
    gray = 4'b1000; #100; 
    gray = 4'b0101; #100;  
    gray = 4'b1110; #100;
    gray = 4'b0010; #100; 
    $finish;
    
  end

endmodule
