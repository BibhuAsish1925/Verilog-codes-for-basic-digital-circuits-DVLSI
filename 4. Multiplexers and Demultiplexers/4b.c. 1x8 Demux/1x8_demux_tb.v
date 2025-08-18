module tb1();
  reg in, en;
  reg [2:0]s; 
  wire [7:0]y;
  int a;
  
  demux_1x8 uut(in,en,s,y);
  
  initial begin
    
    $dumpfile("dump.vcd"); $dumpvars;
    {en,s,in}=0;
    for(a=0;a<=40;a=a+1)
      begin
        {en,s,in}=a; #5;
      end
    
  end
endmodule