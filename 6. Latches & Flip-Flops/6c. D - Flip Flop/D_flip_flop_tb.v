module tb1();
  reg d;
  reg clk;
  wire q,q_bar;
  //integer i;
  
  D_flip_flop uut(d,clk,q,q_bar);
  
  // Clock generation: 10ns period
  initial begin
    clk = 0;
    forever #5 clk = ~clk;  //clk toggles every 5sec
  end
  
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    
    d = 0; #10;
    d = 1; #10;
    d = 0; #10;
    d = 1; #10;
    d = 1; #10;
    d = 0; #10;
    d = 0; #10;
    
      
    $finish; // very crucial line shouldnt be ignored

  end
endmodule