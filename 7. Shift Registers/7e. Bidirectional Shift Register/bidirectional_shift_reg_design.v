module bidirectional_4bit_shift_reg(
  input mode,  //s-shift, lbar-~load
  input Dr,Dl,  // I/P of PISO gave to each state at a time but passes through a circuit you should prefer the circuit diagram
  input clk,
  output [3:0]q,   // O/P of PISO from Last stage Q's
  output [3:0]q_bar
);
  
  wire [3:0]d,y,x;
  wire mode_bar;
  
  assign mode_bar = ~mode;

  and_gate a1(y[3],Dr,mode);
  and_gate a2(x[3],q[2],mode_bar);
  or_gate o1(d[3],x[3],y[3]);
  D_flip_flop dff3(d[3],clk,q[3],q_bar[3]);
  
  and_gate a3(y[2],q[3],mode);
  and_gate a4(x[2],q[1],mode_bar);
  or_gate o2(d[2],x[2],y[2]);
  D_flip_flop dff2(d[2],clk,q[2],q_bar[2]);
     
  and_gate a5(y[1],q[2],mode);
  and_gate a6(x[1],q[0],mode_bar);
  or_gate o3(d[1],x[1],y[1]);
  D_flip_flop dff1(d[1],clk,q[1],q_bar[1]);
  
  and_gate a7(y[0],q[1],mode);
  and_gate a8(x[0],Dl,mode_bar);
  or_gate o4(d[0],x[0],y[0]);
  D_flip_flop dff0(d[0],clk,q[0],q_bar[0]);
  
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



