module siso_4bit_shift_reg(
  input din,clk,
  output dout,   // O/P of SISO is a single output from last stage
  output [3:0]q_bar
);
  wire [3:0]q_int;
  
  D_flip_flop d3(din,clk,q_int[3],q_bar[3]);
  D_flip_flop d2(q_int[3],clk,q_int[2],q_bar[2]);
  D_flip_flop d1(q_int[2],clk,q_int[1],q_bar[1]);
  D_flip_flop d0(q_int[1],clk,q_int[0],q_bar[0]);
  
  assign dout=q_int[0];  //lastly the dout and q_int[0] are made same in order to get output in dout single output form
  
endmodule
  

//used structurally
module D_flip_flop(
  input d,
  input clk,
  output reg q,q_bar
);
  
  always @(posedge clk)  // specifying positive edge clock pulse
    begin
      case({d})
        1'b0: begin q<=1'b0;  q_bar<=1'b1; end
        1'b1: begin q<=1'b1;  q_bar<=1'b0; end
      endcase
    end
  
endmodule

