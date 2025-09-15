module priority_encoder_tb();

  reg [3:0] in;
  wire [1:0] out;
  
  priority_encoder uut(.in(in),.out(out));
  
  initial begin
    in=4'b0000; #100;
    in=4'b1001; #100;
    in=4'b0011; #100;
    in=4'b1101; #100;
    in=4'b0101; #100;
    in=4'b0001; #100;
    $finish;

  end
endmodule
