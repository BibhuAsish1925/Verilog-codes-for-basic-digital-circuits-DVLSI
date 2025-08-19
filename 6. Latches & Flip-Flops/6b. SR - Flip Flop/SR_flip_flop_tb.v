module tb1();
  reg s,r;
  reg clk;
  wire q,q_bar;
  integer i;
  
  SR_flip_flop uut(s,r,clk,q,q_bar);
  
  // Clock generation: 10ns period
  initial begin
    clk = 0;
    forever #5 clk = ~clk;  //clk toggles every 5sec
  end
  
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    
    /*{s,r}=0;
    for(i=0;i<=8;i=i+1)
      begin
        {s,r}=i;
        #10;
        $display("Final Output => Time=%0t | CLK=%b S=%b R=%b | Q=%b Q_bar=%b",$time,clk,s,r,q,q_bar);    
      end*/
    
    s = 0; r = 0; #10;
    s = 0; r = 1; #10;
    s = 1; r = 0; #10;
    s = 1; r = 1; #10;
    s = 0; r = 0; #10;
    s = 1; r = 0; #10;
    s = 0; r = 1; #10;
    s = 1; r = 1; #10;
    
    $finish; // very crucial line shouldnt be ignored

  end
endmodule