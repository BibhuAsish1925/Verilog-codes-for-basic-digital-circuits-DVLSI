module Half_adder_tb();
  reg a, b; 
  wire sum, carry;
  integer i;

  half_adder uut(a, b, sum, carry);

  initial begin
    $monitor("Time=%0t | a=%b b=%b => sum=%b carry=%b", $time, a, b, sum, carry);
    
    {a, b} = 0;
    for (i = 0; i <= 4; i = i + 1) begin
      {a, b} = i;
      #100;
    end
  end
endmodule


