module hexadecimal_binary_tb();

  reg  [15:0] in;
  wire [3:0]  out;

  hexadecimal_binary uut (.in(in),.out(out));

  initial begin

    in = 16'h0000; #100;
    in = 16'h8000; #100;
    in = 16'h0400; #100;
    in = 16'h0002; #100;

    $finish;
  end

endmodule
