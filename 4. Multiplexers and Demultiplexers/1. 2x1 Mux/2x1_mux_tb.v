module tb1();
  reg i1,i0,s; 
  wire out;
  int i;
  
  mux_2x1 uut(i1,i0,s,out);
  
  initial begin
    
    $dumpfile("dump.vcd"); $dumpvars;
    
    {s,i1,i0}=0;
    for(i=0;i<=8;i=i+1)
      begin
        {s,i1,i0}=i;
        #10;
      end
  end
endmodule