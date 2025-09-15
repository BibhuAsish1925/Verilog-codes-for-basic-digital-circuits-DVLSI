module decimal_bcd_encoder_tb();

  reg [9:0] in;
  wire [3:0] out;
  
  decimal_bcd_encoder uut(.in(in),.out(out));
  
  initial begin
    
    in=10'b000000100; #100;
    in=10'b100000000; #100;
    in=10'b000010000; #100;
    in=10'b000001010; #100;
    
    $finish;
  end
endmodule
