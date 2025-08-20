module tb4;
  reg  in, en;
  wire out;

  tristate_buffer uut(in, en, out);

  initial begin
    $dumpfile("dump.vcd"); $dumpvars;

    in = 0; en = 0; #10;  
    in = 1; en = 0; #10;  
    in = 0; en = 1; #10;  
    in = 1; en = 1; #10; 

  end
endmodule
