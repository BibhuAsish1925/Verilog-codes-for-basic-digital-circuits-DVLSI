module sync_3bit_down_counter_tb;
  reg clk, rst_n;
  wire [2:0] q_struct, q_behav;

  // Uncomment the one you want to test
  synchronous_3bit_down_counter_struct uut1(.clk(clk),.rst_n(rst_n),.q(q_struct));
  //synchronous_3bit_down_counter_behav  uut2(.clk(clk), .rst_n(rst_n), .q(q_behav));

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin

    $display("Time\tclk\trst_n\tq_struct\tq_behav");
    $monitor("%0t\t%b\t%b\t%b\t%b", $time, clk, rst_n, q_struct, q_behav);

    rst_n = 0; #12;
    rst_n = 1; #100;
    rst_n = 0; #10;
    rst_n = 1; #70;
    $finish;
  end
endmodule