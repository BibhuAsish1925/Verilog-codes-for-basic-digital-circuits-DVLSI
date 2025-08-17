// Test Bench:
module tb1();
  reg a,b; 
  wire diff,bor;
  int i;
  
  half_sub uut(a,b,diff,bor);
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    {a,b}=0;
    for(i=0;i<=4;i=i+1)
      begin
        {a,b}=i;
        #10;
      end
  end
endmodule
    