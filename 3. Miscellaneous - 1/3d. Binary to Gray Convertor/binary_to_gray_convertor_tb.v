module binary_gray_conv_tb;

  reg  [3:0] b;
  wire [3:0] g;

  binary_gray_conv uut (.b(b),.g(g));

  initial begin

    b = 4'b1010; #100;
    b = 4'b1000; #100;
    b = 4'b0101; #100;
    b = 4'b1110; #100;
    b = 4'b0010; #100;

    $finish;
  end

endmodule
