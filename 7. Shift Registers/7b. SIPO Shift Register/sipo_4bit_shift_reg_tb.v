module sipo_4bit_shift_reg_tb();
  reg clk, din;
  wire [3:0] q;
  wire [3:0] q_bar;

  // Uncomment ONE of the following:
  sipo_4bit_shift_reg_behav uut(.din(din),.clk(clk),.q(q));
  //sipo_4bit_shift_reg_struct uut(.din(din),.clk(clk),.q(q),.q_bar(q_bar));

  // Clock generation: 10ns period
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    $monitor("%0t | clk=%b din=%b | q=%b q_bar=%b",$time, clk, din, q, q_bar);

    din = 1; #10;
    din = 0; #10;
    din = 1; #10;
    din = 1; #10;
    #20;
    $finish;
  end
endmodule