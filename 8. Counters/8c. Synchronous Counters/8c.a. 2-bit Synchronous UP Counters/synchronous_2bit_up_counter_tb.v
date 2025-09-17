module synchronous_2bit_up_counter_tb();
reg clk, rst_n, t;
  wire [1:0] q_behav, q_struct; 

  // Uncomment the one you want to test
  //synchronous_2bit_up_counter_behav uut(.clk(clk), .rst_n(rst_n), .q(q_behav));
  synchronous_2bit_up_counter_struct uut(.t(t),.clk(clk),.rst_n(rst_n),.qout(q_struct));

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
   
    $display("Time\tclk\trst_n\tt\tq_behav\tq_struct");
    $monitor("%0t\t%b\t%b\t%b\t%b\t%b",
             $time, clk, rst_n, t, q_behav, q_struct);

    rst_n = 0; t = 1; #20;
    rst_n = 1;#100;   

    t = 0; #40;   

    t = 1; #60;   

    $finish;
  end
endmodule