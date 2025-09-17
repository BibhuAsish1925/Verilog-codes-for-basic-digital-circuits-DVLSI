module asynchronous_4bit_up_counter_tb;
  reg clk, t;
  wire [3:0] q;
  wire [3:0] q_bar;

  // Uncomment the one you want to test
  asynchronous_4bit_up_counter_struct uut(.t(t), .clk(clk), .q(q), .q_bar(q_bar));
  //asynchronous_4bit_up_counter_behav uut(.clk(clk), .t(t), .q(q));

  initial begin
    clk = 0;
    forever #5 clk = ~clk; // 10ns clock
  end

  initial begin
 
    $display("time\tclk\tt\tq\tq_bar");
    $monitor("%0t\t%b\t%b\t%b\t%b", $time, clk, t, q, q_bar);

    t = 1;
    #100;
    t = 0;
    #40;
    t = 1;
    #150;

    $finish;
  end

endmodule
