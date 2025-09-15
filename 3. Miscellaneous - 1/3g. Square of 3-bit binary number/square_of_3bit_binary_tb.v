module square_of_3bit_binary_tb();

  reg  [2:0] in;
  wire [5:0] out;

  square_of_3bit_binary dut(.in(in), .out(out));

  initial begin
    $monitor("Time=%0t | in=%b | out=%b", $time, in, out);

    in = 3'b000; #100;
    in = 3'b001; #100;
    in = 3'b010; #100;
    in = 3'b011; #100;
    in = 3'b100; #100;
    in = 3'b101; #100;
    in = 3'b110; #100;
    in = 3'b111; #100;

    $finish;
  end
endmodule
