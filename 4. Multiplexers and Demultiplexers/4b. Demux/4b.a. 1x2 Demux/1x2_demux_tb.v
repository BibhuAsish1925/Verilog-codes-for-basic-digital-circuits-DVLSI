module demux_1x2_tb();
  reg in, en, s; 
  wire [1:0]y;
  integer a;
  
  demux_1x2 uut(.in(in),.en(en),.s(s),.y(y));
  
  initial begin
    
    {en,s,in}=0;
    for(a=0;a<=8;a=a+1)
      begin
        {en,s,in}=a; #100;
      end
      $finish;
    
  end
endmodule
