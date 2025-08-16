// TestBench:
module tb2();
  reg a,b,cin;
  wire sum,cout;
  int i;
  full_adder uut(a,b,cin,sum,cout);
  
  initial begin
    
    $dumpfile("dump.vcd"); $dumpvars;  
    {a,b,cin}=0;
    for(i=0;i<=8;i=i+1)
      begin
        {a,b,cin}=i;
        #10;
      end
  end
endmodule