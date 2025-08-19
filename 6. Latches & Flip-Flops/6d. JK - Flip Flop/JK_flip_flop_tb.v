module tb1();
  reg j,k;
  reg clk;
  wire q,q_bar;
  integer i;
  
  JK_flip_flop uut(j,k,clk,q,q_bar);
  
  // Clock generation: 10ns period
  initial begin
    clk = 0;
    forever #5 clk = ~clk;  //clk toggles every 5sec
  end
  
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    
    /*{j,r}=0;
    for(i=0;i<=8;i=i+1)
      begin
        {j,k}=i;
        #10;
        $display("Final Output => Time=%0t | CLK=%b J=%b K=%b | Q=%b Q_bar=%b",$time,clk,j,k,q,q_bar);    
      end*/
    
    j = 0; k = 0; #10;
    j = 0; k = 1; #10;
    j = 1; k = 0; #10;
    j = 1; k = 1; #10;
    j = 0; k = 0; #10;
    j = 1; k = 0; #10;
    j = 0; k = 1; #10;
    j = 1; k = 1; #10;
    
    
    $finish; // very crucial line shouldnt be ignored

  end
endmodule