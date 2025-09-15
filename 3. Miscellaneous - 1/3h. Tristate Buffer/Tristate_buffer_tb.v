module tristate_buffer_tb();
  reg  in, en;
  wire out;

  tristate_buffer uut(.in(in), .en(en), .out(out));

  initial begin

    in = 0; en = 0; #100;  
    in = 1; en = 0; #100;  
    in = 0; en = 1; #100;  
    in = 1; en = 1; #100; 

  end
endmodule
