module bidirectional_4bit_shift_reg_tb();
reg clk, mode, Dr, Dl;
  wire [3:0] q_struct, q_bar;
  wire [3:0] q_behav;

  // Uncomment the one you want to test
  //bidirectional_4bit_shift_reg_struct  uut(.mode(mode),.Dr(Dr),.Dl(Dl),.clk(clk),.q(q_struct), .q_bar(q_bar));
  bidirectional_4bit_shift_reg_behav uut(.clk(clk),.mode(mode),.Dr(Dr),.Dl(Dl),.q(q_behav));

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
  
    $monitor("%0t\t%b\t%b\t%b\t%b\t%b\t%b",$time, clk, mode, Dr, Dl, q_struct, q_behav);

    mode = 0; Dr = 0; Dl = 0; #10;

    mode = 0;
    Dr = 1; #10; 
    Dr = 0; #10;
    Dr = 1; #10;
    Dr = 0; #10;

    Dr = 0; #10;

    mode = 1;
    Dl = 1; #10;
    Dl = 1; #10;
    Dl = 0; #10;
    Dl = 1; #10;

    Dl = 0; #10;

    mode = 0; Dr = 1; #10;
    mode = 1; Dl = 0; #10;
    mode = 0; Dr = 0; #10;
    mode = 1; Dl = 1; #10;

    $finish;
  end

endmodule
