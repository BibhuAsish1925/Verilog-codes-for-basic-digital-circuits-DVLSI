module tb_mod_10_counter;

  reg clk;
  reg t;
  wire [3:0] q;
  wire [3:0] q_bar;

  //mod_10_counter uut (.clk(clk),.q(q),.q_bar(q_bar));
  mod_10_counter uut (.t(t),.clk(clk),.q(q),.q_bar(q_bar));

  // Clock generation: 10ns period
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    $display("Time\tclk\tq\tq_bar");
    //$monitor("%0t\t%b\t%d\t%d", $time, clk, q, q_bar);
    $monitor("%0t\t%b\t%b\t%d\t%d", $time, clk, t, q, q_bar);
    
    t=0; #10
    t = 1;
    #190;

    $finish;
  end

endmodule