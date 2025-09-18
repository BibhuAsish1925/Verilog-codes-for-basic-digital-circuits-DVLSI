module Random_seq_detector1_tb();
reg clk;
  //reg [2:0]t;
  wire [2:0] qout;

  // Instantiate the counter
  Random_seq_detector1 uut (.clk(clk),.qout(qout));

  // Clock generation: 10ns period
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
  
    $display("Time\tclk\tt\tqout");
    //$monitor("%0t\t%b\t%b\t%d", $time, clk, t, qout);
    
    #100;

    $finish;
  end

endmodule
