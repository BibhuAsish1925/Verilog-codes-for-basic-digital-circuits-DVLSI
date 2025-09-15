module Half_subtractor_tb;
  reg a,b; 
  wire diff,bor;
  integer i;
  
  half_subtractor uut(a,b,diff,bor);
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    {a,b}=0;
    for(i=0;i<=4;i=i+1)
      begin
        {a,b}=i;
        #100;
      end
  end
endmodule
