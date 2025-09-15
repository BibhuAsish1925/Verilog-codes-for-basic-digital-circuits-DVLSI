module mux_2x1_tb();

  reg i1,i0,s; 
  wire out;
  integer i;
  
  mux_2x1 uut(i1,i0,s,out);
  
  initial begin
    
    {s,i1,i0}=0;
    for(i=0;i<=8;i=i+1)
      begin
        {s,i1,i0}=i;
        #100;
      end
  end
endmodule
