module demux_1x16_tb();
  reg in, en;
  reg [3:0]s; 
  wire [15:0]y;
  integer a;
  
  demux_1x16 uut(.in(in),.en(en),.s(s),.y(y));
  
  initial begin
    
    {en,s,in}=0;
    for(a=0;a<=70;a=a+1)
      begin
        {en,s,in}=a; #5;
      end
    $finish;
  end
endmodule
