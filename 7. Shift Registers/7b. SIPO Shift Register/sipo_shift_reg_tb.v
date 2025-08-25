module tb();
  reg clk, din;
  wire [3:0] q;
  wire [3:0] q_bar;

  sipo_4bit_shift_reg uut(.din(din),.clk(clk),.q(q),.q_bar(q_bar));

  // Clock generation: 10ns period
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    
    $dumpfile("dump.vcd"); $dumpvars;
    $monitor("%0t\t%b\t%b\t%b\t%b", $time, clk, din, q, q_bar);

    din = 1'b1; #10;  
    din = 1'b0; #10;  
    din = 1'b1; #10; 
    din = 1'b1; #10;  

    #20;
    $finish;
  end

endmodule