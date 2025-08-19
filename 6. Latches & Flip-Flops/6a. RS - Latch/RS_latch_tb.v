module tb1();
  reg r,s;
  wire q,q_bar;
  integer i;
  
  RS_latch uut(s,r,q,q_bar);
  
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    
    {r,s}=0;
    for(i=0;i<=8;i=i+1)
      begin
        {r,s}=i;
        #10;
      end
  end
  
endmodule
        
    