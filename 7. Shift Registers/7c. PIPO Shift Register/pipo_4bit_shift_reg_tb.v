module pipo_4bit_shift_reg_tb();
  reg clk;
  reg [3:0] din;
  wire [3:0] q;
  wire [3:0] q_bar;

  // Uncomment one of the following
  pipo_4bit_shift_reg_behav uut(.din(din),.clk(clk),.q(q));
  //pipo_4bit_shift_reg_struct uut(.din(din),.clk(clk),.q(q),.q_bar(q_bar));

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    $monitor("%0t | clk=%b din=%b | q=%b q_bar=%b",$time, clk, din, q, q_bar);

    din = 4'b1011; #10;
    din = 4'b1001; #10;
    din = 4'b0111; #10;
    din = 4'b1110; #10;
    din = 4'b1111; #10;

    #20;
    $finish;
  end
endmodule