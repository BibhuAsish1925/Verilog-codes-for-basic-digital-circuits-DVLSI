module tb;

  reg clk, t, mode;
  wire [3:0] qout;

  // Instantiate the counter
  Synchronous_4bit_up_down_counter uut (.t(t),.clk(clk),.mode(mode),.qout(qout));

  // Clock generation: 10ns period
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    $display("Time\tclk\tt\tmode\tqout");
    $monitor("%0t\t%b\t%b\t%b\t%b", $time, clk, t, mode, qout);

    t = 1; mode = 0; // up-count mode
    #100;

    mode = 1; // down-count mode
    #100;

    t = 0;
    #30;

    t = 1; mode = 0;
    #100;

    mode = 1;
    #100;

    $finish;
  end

endmodule
