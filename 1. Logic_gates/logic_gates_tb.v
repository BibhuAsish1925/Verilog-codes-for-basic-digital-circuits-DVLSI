module tb1();
  reg a,b;
  wire and_out,or_out,nand_out,nor_out,notb_out,xor_out,xnor_out;
  gate_logic uut(.a(a),.b(b),.and_out(and_out),.or_out(or_out),.notb_out(notb_out),.nand_out(nand_out),.nor_out(nor_out),.xor_out(xor_out),.xnor_out(xnor_out));
  int i;
  
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    {a,b}=0;
    for(i=0;i<=4;i=i+1)
      begin
        {a,b}=i;
        #10;
      end
    
    /*a=0; b=0; #10
    a=0; b=1; #10
    a=1; b=0; #10
    a=1; b=1; #10
    a=0; b=0; #10
    $finish;*/
  end
endmodule