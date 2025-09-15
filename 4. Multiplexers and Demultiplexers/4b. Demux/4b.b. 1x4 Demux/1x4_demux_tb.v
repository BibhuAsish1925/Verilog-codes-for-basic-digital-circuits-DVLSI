module demux_1x4_tb();
  reg in, en;
  reg [1:0]s; 
  wire [3:0]y;
  integer a;
  
  demux_1x4 uut(.in(in),.en(en),.s(s),.y(y));
  
  initial begin
    
    $dumpfile("dump.vcd"); $dumpvars;
    {en,s,in}=0;
    for(a=0;a<=20;a=a+1)
      begin
        {en,s,in}=a; #100;
      end
    $finish;
  end
endmodule
