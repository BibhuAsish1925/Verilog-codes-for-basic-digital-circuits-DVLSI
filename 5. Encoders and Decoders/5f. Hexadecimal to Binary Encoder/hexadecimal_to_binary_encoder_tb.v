module tb;

  reg  [15:0] in;
  wire [3:0]  out;

  hexadecimal_binary uut (.in(in),.out(out));

  initial begin
    $dumpfile("hex_encoder.vcd");
    $dumpvars(0, tb);

    in = 16'h0000; #10;
    in = 16'h8000; #10;
    in = 16'h0400; #10;
    in = 16'h0002; #10;

    $finish;
  end

endmodule

