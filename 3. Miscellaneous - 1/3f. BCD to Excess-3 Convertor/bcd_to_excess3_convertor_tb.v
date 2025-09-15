module bcd_to_excess3_convertor_tb();

  reg  [3:0] b;
  wire [3:0] x;

  bcd_to_excess3_convertor uut(b, x);

  initial begin
   
    b = 4'b0000; #100;
    b = 4'b0001; #100;
    b = 4'b0010; #100;
    b = 4'b0011; #100;
    b = 4'b0100; #100;
    b = 4'b0101; #100;
    b = 4'b0110; #100;
    b = 4'b0111; #100;
    b = 4'b1000; #100;

  end
endmodule
