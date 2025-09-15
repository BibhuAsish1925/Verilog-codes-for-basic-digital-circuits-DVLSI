module comparator_4bit_tb();

  reg [3:0] a,b;
  wire lt,eq,gt;
  
  comparator_4bit uut(a,b,lt,eq,gt);
  
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    
    a=4'b0010; b=4'b1001; #100
    a=4'b1110; b=4'b1001; #100
    a=4'b0010; b=4'b1001; #100
    a=4'b0000; b=4'b0000; #100
    a=4'b1010; b=4'b1010; #100
    a=4'b1101; b=4'b1001; #100
    $finish;
    
  end

endmodule
