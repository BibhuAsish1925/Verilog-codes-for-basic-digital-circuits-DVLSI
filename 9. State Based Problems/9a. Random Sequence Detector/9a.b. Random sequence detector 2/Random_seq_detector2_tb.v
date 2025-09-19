module Random_seq_detector2_tb(); 
  reg clk;
  wire [3:0] qout;

  Random_seq_detector2 uut (.clk(clk), .qout(qout));

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin

    #200 $finish;
  end


endmodule