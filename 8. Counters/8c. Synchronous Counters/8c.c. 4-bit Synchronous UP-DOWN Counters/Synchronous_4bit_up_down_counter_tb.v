module Synchronous_4bit_up_down_counter_tb();
reg clk, t, mode, rst_n;
  wire [3:0] q_behav, q_struct;

  // Uncomment the one you want to test
  //Synchronous_4bit_up_down_counter_behav uut(.clk(clk),.rst_n(rst_n),.mode(mode),.q(q_behav));
  Synchronous_4bit_up_down_counter_struct uut(.t(t),.clk(clk),.rst_n(rst_n),.mode(mode),.qout(q_struct));

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
 
    $display("Time\tclk\trst_n\tt\tmode\tq_behav\tq_struct");
    $monitor("%0t\t%b\t%b\t%b\t%b\t%b\t%b",$time, clk, rst_n, t, mode, q_behav, q_struct);

    rst_n = 0; t = 1; mode = 0; #20;
    rst_n = 1;

    mode = 0; #100;   // Up count

    mode = 1; #100;   // Down count
    
    t = 0; #50;
    t = 1; mode = 0; #100;

    $finish;
  end
endmodule
