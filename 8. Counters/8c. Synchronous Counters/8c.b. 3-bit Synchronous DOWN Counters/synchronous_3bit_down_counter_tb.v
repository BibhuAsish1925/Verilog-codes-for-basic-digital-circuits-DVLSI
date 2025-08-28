module tb;

  reg clk, t;
  wire [2:0] q;
  wire [2:0] q_bar;

  synchronous_3bit_down_counter uut (.t(t),.clk(clk),.q(q),.q_bar(q_bar));

  // Clock generation: 10ns period
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    $display("Time\tclk\tt\tq\tq_bar");
    $monitor("%0t\t%b\t%b\t%b\t%b", $time, clk, t, q, q_bar);

    t = 1;
    #100;

    $finish;
  end

endmodule
