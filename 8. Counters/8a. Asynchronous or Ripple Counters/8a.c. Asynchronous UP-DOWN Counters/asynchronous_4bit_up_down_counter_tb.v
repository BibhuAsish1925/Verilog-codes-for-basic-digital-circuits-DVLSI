module Asynchronous_4bit_up_down_counter_tb();
  reg clk, t, mode;
  wire [3:0] qout_struct;
  wire [3:0] qout_behav;

  // Uncomment the one you want to test
  //Asynchronous_4bit_up_down_counter_struct uut(.t(t),.clk(clk),.mode(mode),.qout(qout_struct));
  Asynchronous_4bit_up_down_counter_behav uut(.t(t),.clk(clk),.mode(mode),.q(qout_behav));

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    
    $display("Time\tclk\tt\tmode\tq_struct\tq_behav");
    $monitor("%0t\t%b\t%b\t%b\t%b\t%b",$time, clk, t, mode, qout_struct, qout_behav);

    t = 1; mode = 0; // up
    #100;

    mode = 1; // down
    #100;

    t = 0; #30;

    t = 1; mode = 0; 
    #100;

    mode = 1; 
    #100;

    $finish;
  end
endmodule