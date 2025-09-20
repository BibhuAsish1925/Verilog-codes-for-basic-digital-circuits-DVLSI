module decoder_3x8_tb();
  reg [2:0]i; 
  wire [7:0]out;
  //int a;
  
  decoder_3x8 uut(.i(i),.out(out));
  
  initial begin
    
    i=8'b000;#100;
    i=8'b001;#100;
    i=8'b010;#100;
    i=8'b011;#100;
    i=8'b100;#100;
    i=8'b101;#100;
    i=8'b110;#100;
    i=8'b111;#100;
    
    i=8'b011;#100;
    i=8'b110;#100;
    i=8'b010;#100;
    
    $finish;
  end
endmodule

