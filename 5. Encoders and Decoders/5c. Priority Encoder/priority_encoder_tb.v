module tb( );
  reg [3:0] in;
  wire [1:0] out;
  
  priority_encoder uut(in,out);
  
  initial begin
    in=4'b0000; #5;
    in=4'b1001; #10;
    in=4'b0011; #10
    in=4'b1101; #10
    in=4'b0101; #10
    in=4'b0001; #10
    $finish;

  end
endmodule
