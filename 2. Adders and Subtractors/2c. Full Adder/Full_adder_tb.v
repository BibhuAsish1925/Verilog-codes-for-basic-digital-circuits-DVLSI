module full_adder_tb();

  reg a, b, cin;
  wire sum, cout;
  integer i;

  Full_adder uut(a, b, cin, sum, cout);

  initial begin
    
    $monitor("Time=%0t | a=%b b=%b cin=%b => sum=%b cout=%b", $time, a, b, cin, sum, cout);

    {a, b, cin} = 0;
    for (i = 0; i <= 8; i = i + 1) begin
      {a, b, cin} = i;
      #100;
    end
  end

endmodule
