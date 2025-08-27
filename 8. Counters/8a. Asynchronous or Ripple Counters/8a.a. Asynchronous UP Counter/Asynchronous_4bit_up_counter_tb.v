module tb;

  reg clk, t;
  wire [3:0] q;
  wire [3:0] q_bar;

  Asynchronous_4bit_up_counter uut (.t(t),.clk(clk),.q(q),.q_bar(q_bar));

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
    #50;
    t = 0;
    #20;
    t = 1;
    #200;

    $finish;
  end

endmodule