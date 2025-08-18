module tb1();
  reg in, en;
  reg [1:0]s; 
  wire [3:0]y;
  int a;
  
  demux_1x4 uut(in,en,s,y);
  
  initial begin
    
    $dumpfile("dump.vcd"); $dumpvars;
    {en,s,in}=0;
    for(a=0;a<=20;a=a+1)
      begin
        {en,s,in}=a; #10;
      end
    
  end
endmodule