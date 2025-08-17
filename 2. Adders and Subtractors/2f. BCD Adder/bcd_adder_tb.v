module tb1;
  reg A3, A2, A1, A0;
  reg B3, B2, B1, B0;
  reg Cin;
  wire S3, S2, S1, S0;
  wire Cout;

  bcd_adder uut(.A3(A3), .A2(A2), .A1(A1), .A0(A0),.B3(B3), .B2(B2), .B1(B1), .B0(B0),.Cin(Cin),.S3(S3), .S2(S2), .S1(S1), .S0(S0),.Cout(Cout));

  task apply_inputs;
    input [3:0] A, B;
    input c;
    begin
      {A3, A2, A1, A0} = A;
      {B3, B2, B1, B0} = B;
      Cin = c;
      #10;
      $display("A=%d B=%d Cin=%b | Sum=%d Cout=%b", A, B, Cin, {S3,S2,S1,S0}, Cout);
    end
  endtask

  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    $display("BCD Adder Testbench");
    $display("--------------------");

    apply_inputs(4'd3, 4'd5, 1'b0);  
    apply_inputs(4'd5, 4'd6, 1'b0);  
    apply_inputs(4'd5, 4'd9, 1'b0);  
    apply_inputs(4'd2, 4'd12, 1'b0);  
    apply_inputs(4'd0, 4'd15, 1'b0);  

  end
endmodule