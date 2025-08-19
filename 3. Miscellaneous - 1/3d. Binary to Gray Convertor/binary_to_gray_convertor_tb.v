module tb;

  reg  [3:0] b;
  wire [3:0] g;

  binary_gray_conv uut (.b(b),.g(g));

  initial begin
    $dumpfile("gray_conv.vcd");
    $dumpvars(0, tb);

    b = 4'b1010; #10;
    b = 4'b1000; #10;
    b = 4'b0101; #10;
    b = 4'b1110; #10;
    b = 4'b0010; #10;

    $finish;
  end

endmodule