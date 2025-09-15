module bit_4_odd_parity_gen_tb();
  reg b0,b1,b2,b3;
  wire y;
  integer i;
  
  bit_4_odd_parity_gen uut(.b0(b0),.b1(b1),.b2(b2),.b3(b3),.y(y));
  
  initial begin
    $dumpfile("dump.vcd"); 
    $dumpvars;
    {b3,b2,b1,b0}=0;
    for(i=0; i<=15; i=i+1)
      begin
        {b3,b2,b1,b0}=i; #50;
      end
  end
endmodule
