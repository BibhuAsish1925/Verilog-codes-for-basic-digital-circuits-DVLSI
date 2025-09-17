module johnson_counter_tb();
reg clk, rst_n;
  wire [3:0] q_behav, q_struct;

  // Uncomment the one you want to test
  //johnson_counter_behav  uut(.clk(clk), .rst_n(rst_n), .q(q_behav));
  johnson_counter_struct uut(.clk(clk), .rst_n(rst_n), .q(q_struct));

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
 
    $display("Time\tclk\trst_n\tq_behav\tq_struct");
    $monitor("%0t\t%b\t%b\t%b\t%b", $time, clk, rst_n, q_behav, q_struct);

    rst_n = 0; #15;
    rst_n = 1; #200;
    rst_n = 0; #10;
    rst_n = 1; #100;
    $finish;
  end
endmodule