module tb1();
  reg in, en;
  reg [3:0]s; 
  wire [15:0]y;
  int a;
  
  demux_1x16 uut(in,en,s,y);
  
  initial begin
    
    $dumpfile("dump.vcd"); $dumpvars;
    {en,s,in}=0;
    for(a=0;a<=70;a=a+1)
      begin
        {en,s,in}=a; #5;
      end
    
  end
endmodule