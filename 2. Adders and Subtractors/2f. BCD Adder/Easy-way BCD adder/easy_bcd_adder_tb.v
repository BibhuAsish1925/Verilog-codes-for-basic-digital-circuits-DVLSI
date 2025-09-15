module BCD_adder_tb();
  reg  [3:0] A, B;
  reg  Cin;
  wire [3:0] Sum;
  wire  Cout;

  BCD_adder UUT (A, B, Cin, Sum, Cout);

  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    $monitor("A=%d B=%d Cin=%b | Sum=%d Cout=%b", A, B, Cin, Sum, Cout);

    A = 4'd3; B = 4'd5; Cin = 0; #100;
    A = 4'd4; B = 4'd6; Cin = 0; #100;
    A = 4'd9; B = 4'd9; Cin = 0; #100;
    A = 4'd2; B = 4'd7; Cin = 1; #100;
    A = 4'd0; B = 4'd9; Cin = 1; #100;

    $finish;
  end
  
endmodule
