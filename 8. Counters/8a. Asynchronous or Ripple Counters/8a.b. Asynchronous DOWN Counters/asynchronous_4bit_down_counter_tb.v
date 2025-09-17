module asynchronous_4bit_down_counter_tb();
  reg clk, t;
  wire [3:0] q_struct, q_bar_struct;
  wire [3:0] q_behav;

  // DUT instantiations
  //asynchronous_4bit_down_counter_struct uut(.t(t),.clk(clk),.q(q_struct),.q_bar(q_bar_struct));
  asynchronous_4bit_down_counter_behav uut(.t(t),.clk(clk),.q(q_behav));

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
 
    $display("Time\tclk\tt\tq_struct\tq_behav");
    $monitor("%0t\t%b\t%b\t%b\t%b",$time, clk, t, q_struct, q_behav);

    t = 1; #200;  
    t = 0; #50;  
    t = 1; #200;  

    $finish;
  end
endmodule