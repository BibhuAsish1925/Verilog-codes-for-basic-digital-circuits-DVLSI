module demux_1x8_tb();
  reg in, en;
  reg [2:0]s; 
  wire [7:0]y;
  integer a;
  
  demux_1x8 uut(.in(in),.en(en),.s(s),.y(y));
  
  initial begin
    
    {en,s,in}=0;
    for(a=0;a<=40;a=a+1)
      begin
        {en,s,in}=a; #5;
      end
    $finish;
  end
endmodule
