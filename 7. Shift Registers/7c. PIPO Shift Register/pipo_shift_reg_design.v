module pipo_4bit_shift_reg(
  input [3:0]din,  // I/P of PIPO gave to each state at a time
  input clk,
  output [3:0]q,   // O/P of PIPO from each stage Q's
  output [3:0]q_bar
);
  //wire [3:0]q_int;
  
  D_flip_flop d3(din[3],clk,q[3],q_bar[3]);
  D_flip_flop d2(din[2],clk,q[2],q_bar[2]);
  D_flip_flop d1(din[1],clk,q[1],q_bar[1]);
  D_flip_flop d0(din[0],clk,q[0],q_bar[0]);
  
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

