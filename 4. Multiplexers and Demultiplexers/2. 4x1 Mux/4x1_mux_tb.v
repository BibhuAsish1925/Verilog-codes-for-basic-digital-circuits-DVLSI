module tb1();
  reg [3:0]i;
  reg [1:0]s; 
  wire out;
  int a;
  
  mux_4x1 uut(i,s,out);
  
  initial begin
    
    $dumpfile("dump.vcd"); $dumpvars;
    
    {s[1],s[0],i[3],i[2],i[1],i[0]}=0;
    for(a=0;a<=64;a=a+1)
      begin
        {s[1],s[0],i[3],i[2],i[1],i[0]}=a;
        #5;
      end
  end
endmodule