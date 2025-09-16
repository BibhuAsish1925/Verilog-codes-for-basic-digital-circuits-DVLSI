module piso_4bit_shift_reg_tb();
  reg clk, s_lbar;
  reg [3:0] din;
  wire q_out;
  wire [3:0] q_bar;

  // Uncomment the one you want to test
  piso_4bit_shift_reg_behav uut(.clk(clk),.s_lbar(s_lbar),.din(din),.q_out(q_out),.q_bar(q_bar));
  //piso_4bit_shift_reg_struct uut(.s_lbar(s_lbar),.din(din),.clk(clk),.q_out(q_out),.q_bar(q_bar));

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end


  initial begin
    $monitor("%0t | s_lbar=%b clk=%b din=%b | q_out=%b q_bar=%b",$time, s_lbar, clk, din, q_out, q_bar);

    s_lbar = 0; din = 4'b1011; #10;
    s_lbar = 1; #40;    

    s_lbar = 0; din = 4'b0110; #10;
    s_lbar = 1; #40;

    s_lbar = 0; din = 4'b1111; #10;
    s_lbar = 1; #40;

    $finish;
  end
endmodule