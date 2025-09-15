module bit_4_adder_cum_subtractor_tb();
  reg [3:0]a,b; 
  reg cbin;
  wire [3:0]sd;
  wire cbout;
  bit_4_adder_cum_subtractor uut(a,b,cbin,sd,cbout);
  
  initial begin
    
    $dumpfile("dump.vcd"); 
    $dumpvars;
    
    //test cases taken manually total 2^9=512 cases possible
    a=4'b0000; b=4'b0101; cbin=0; #100;
    a=4'b0110; b=4'b0101; cbin=1; #100;
    a=4'b0110; b=4'b1111; cbin=0; #100;
    a=4'b1111; b=4'b1111; cbin=1; #100;
    a=4'b0101; b=4'b0110; cbin=1; #100;
    
    $stop;

  end
endmodule
