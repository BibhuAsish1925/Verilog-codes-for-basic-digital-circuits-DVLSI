module decoder_2x4_tb();
  reg [1:0]i; 
  wire [3:0]out;
  //int a;
  
  decoder_2x4 uut(.i(i),.out(out));
  
  initial begin

    i=2'b00; 
    #100;
    i=2'b01; 
    #100;
    i=2'b10; 
    #100;
    i=2'b11; 
    #100;
    i=2'b10; 
    #100;
    i=2'b01; 
    #100;
    $finish;
  end
endmodule

