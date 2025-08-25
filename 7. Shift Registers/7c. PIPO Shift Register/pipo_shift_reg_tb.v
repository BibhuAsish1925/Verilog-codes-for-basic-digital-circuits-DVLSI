module tb();
  reg clk;
  reg [3:0]din;
  wire [3:0]q;
  wire [3:0] q_bar;

  pipo_4bit_shift_reg uut(.din(din),.clk(clk),.q(q),.q_bar(q_bar));

  // Clock generation: 10ns period
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    
    $dumpfile("dump.vcd"); $dumpvars;
    $monitor("%0t\t%b\t%b\t%b\t%b", $time, clk, din, q, q_bar);

    din = 4'b1011; #10;  
    din = 4'b1001; #10;  
    din = 4'b0111; #10; 
    din = 4'b1110; #10; 
    din = 4'b1111; #10;

    #20;
    $finish;
  end

endmodule