module octal_binary_encoder_tb();

  reg  [7:0] in;
  wire [2:0] out;

  octal_binary_encoder uut (.in(in),.out(out));

  initial begin
    

    in = 8'b00000000; #100;
    in = 8'b00000001; #100;
    in = 8'b00000010; #100;
    in = 8'b00000100; #100;
    in = 8'b00001000; #100;
    in = 8'b00010000; #100;
    in = 8'b00100000; #100;
    in = 8'b01000000; #100;
    in = 8'b10000000; #100;

    $finish;
  end


endmodule
