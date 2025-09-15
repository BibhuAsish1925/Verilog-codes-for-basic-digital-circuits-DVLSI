// TestBench:
module tb2();
  reg a,b,bin;
  wire diff,bout;
  int i;
  full_subtractor uut(a,b,bin,diff,bout);
  
  initial begin
    
    $dumpfile("dump.vcd"); $dumpvars;
    {a,b,bin}=0;
    for(i=0;i<=8;i=i+1)
      begin
        {a,b,bin}=i;
        #100;
      end
    $finish
  end

endmodule
