module tb;

    reg clk;
    reg rst_n;
    wire [3:0] q;

    mod_10_counter uut (.clk(clk),.rst_n(rst_n),.q(q));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
      $dumpfile("dump.vcd"); $dumpvars;
   
      rst_n = 0;#20;
      rst_n = 1;#200;
      rst_n = 0;#10;
      rst_n = 1;#100;
      $finish;
    end
        
endmodule
