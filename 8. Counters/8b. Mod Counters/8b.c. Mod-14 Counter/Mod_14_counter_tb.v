module tb;

  reg clk;
  reg rst_n;
  wire [3:0] q;

  mod_14_counter uut (.clk(clk),.rst_n(rst_n),.q(q));

  initial begin
      clk = 0;
      forever #5 clk = ~clk;
  end

  initial begin
     $dumpfile("dump.vcd"); $dumpvars;
     $monitor("%d\t%b\t%d\t", clk, rst_n, q);
   
     rst_n = 0;#20;
     rst_n = 1;#500;
     rst_n = 0;#10;
     rst_n = 1;#400;
     $finish;
   end
        
endmodule
