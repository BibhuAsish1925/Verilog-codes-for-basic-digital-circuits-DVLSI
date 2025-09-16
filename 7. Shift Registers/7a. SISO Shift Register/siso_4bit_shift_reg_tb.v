module siso_4bit_shift_reg_tb();
  reg clk, din;
  wire dout;
  wire [3:0] q;

  // Change module name here to test behav/struct
  //siso_4bit_shift_reg_behav uut(.din(din),.clk(clk),.dout(dout),.q(q));
  siso_4bit_shift_reg_struct uut(.din(din),.clk(clk),.dout(dout),.q(q));

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    $monitor("%0t | clk=%b din=%b | dout=%b q=%b",$time, clk, din, dout, q);

    din = 1; #10;
    din = 0; #10;
    din = 1; #10;
    din = 1; #10;
    #20;
    $finish;
    
  end
endmodule