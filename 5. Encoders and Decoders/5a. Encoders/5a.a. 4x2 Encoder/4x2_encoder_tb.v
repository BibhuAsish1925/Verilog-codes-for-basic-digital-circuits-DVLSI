module encoder_4x2_tb();
reg [3:0]i; 
  wire [1:0]out;
  //int a;
  
  encoder_4x2 uut(.i(i),.out(out));
  
  initial begin

    i=4'b0001; 
    #100;
    i=4'b0010; 
    #100;
    i=4'b0100; 
    #100;
    i=4'b1000; 
    #100;
    i=4'b0010; 
    #100;
    i=4'b0100; 
    #100;
     $finish;
  end
endmodule
