// whichever model you want just remove /* */ and change b/w output and output reg

module piso_4bit_shift_reg(
  input s_lbar,  //s-shift, lbar-~load
  input [3:0]din,  // I/P of PISO gave to each state at a time but passes through a circuit you should prefer the circuit diagram
  input clk,
  output q_out,   // O/P of PISO from Last stage Q's
  output [3:0]q_bar
);
  wire [2:0]qin;
  wire [2:0]d,y,x;
  wire not_s_lbar;
  
  not(not_s_lbar,s_lbar);
  
  D_flip_flop d3(din[3],clk,qin[2],q_bar[3]);
  and_gate a1(y[2],qin[2],s_lbar);
  and_gate a2(x[2],din[2],not_s_lbar);
  or_gate o1(d[2],x[2],y[2]);
  
  D_flip_flop d2(d[2],clk,qin[1],q_bar[2]);
  and_gate a3(y[1],qin[1],s_lbar);
  and_gate a4(x[1],din[1],not_s_lbar);
  or_gate o2(d[1],x[1],y[1]);
     
  D_flip_flop d1(d[1],clk,qin[0],q_bar[1]);
  and_gate a5(y[0],qin[0],s_lbar);
  and_gate a6(x[0],din[0],not_s_lbar);
  or_gate o3(d[0],x[0],y[0]);
  
  D_flip_flop d0(d[0],clk,q_out,q_bar[0]);
  
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

module and_gate (y,a,b);
  input a;
  input b;
  output y;
  
  assign y = a & b;

endmodule

module or_gate (y,a,b);
  input a;
  input b;
  output y;

  assign y = a | b;

endmodule



/*module piso_4bit_shift_reg (
  input clk,
  input s_lbar,             // Active-high load signal
  input [3:0] din,        // Parallel input
  output reg q_out,       // Serial output
  output [3:0]q_bar
);

  reg [3:0] shift_reg;

  always @(posedge clk) begin
    if (s_lbar)
      shift_reg <= din;               // Load parallel data
    else
      shift_reg <= {1'b0, shift_reg[3:1]};  // Shift right
  end

  always @(*) begin
    q_out = shift_reg[0];            // Serial output from LSB
  end

endmodule*/


