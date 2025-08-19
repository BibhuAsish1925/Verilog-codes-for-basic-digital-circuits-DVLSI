module tb1();
  reg t;
  reg clk;
  wire q,q_bar;
  //integer i;
  
  T_flip_flop uut(t,clk,q,q_bar);
  
  // Clock generation: 10ns period
  initial begin
    clk = 0;
    forever #5 clk = ~clk;  //clk toggles every 5sec
  end
  
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    
    t = 0; #10;
    t = 1; #10;
    t = 0; #10;
    t = 1; #10;
    t = 1; #10;
    t = 0; #10;
    t = 0; #10;
    
      
    $finish; // very crucial line shouldnt be ignored

  end
endmodule