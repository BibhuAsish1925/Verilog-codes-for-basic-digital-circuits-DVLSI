module RS_latch_tb();
  reg r,s;
  wire q,q_bar;
  integer i;
  
  RS_latch uut(.s(s),.r(r),.q(q),.q_bar(q_bar));
  
  initial begin
    
    {r,s}=0;
    for(i=0;i<=8;i=i+1)  //we need 4 only
      begin
        {r,s}=i;
        #100;
      end
  end
  
endmodule
