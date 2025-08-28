module Synchronous_4bit_up_down_counter(
  input t,clk,
  input mode,    //if mode is 0 then Up else Down
  output [3:0]qout
);
  wire [3:0]qinx,a,b,qx,q_barx;
  wire mode_bar;
  
  assign mode_bar=~mode;
  
  T_flip_flop tff0(t,clk,qx[0],q_barx[0]);
  assign a[0]=qx[0]&mode_bar;
  assign b[0]=q_barx[0]&mode;
  or_gate o1(qinx[0],a[0],b[0]);
  
  T_flip_flop tff1(qinx[0],clk,qx[1],q_barx[1]);
  assign a[1]= qx[0]&qx[1]&mode_bar;
  assign b[1]= q_barx[0]&q_barx[1]&mode;
  or_gate o2(qinx[1],a[1],b[1]);
  
  T_flip_flop tff2(qinx[1],clk,qx[2],q_barx[2]);
  assign a[2]= qx[0]&qx[1]&qx[2]&mode_bar;
  assign b[2]= q_barx[0]&q_barx[1]&q_barx[2]&mode;
  or_gate o3(qinx[2],a[2],b[2]);
  
  T_flip_flop tff3(qinx[2],clk,qx[3],q_barx[3]);
  assign a[3]= qx[0]&qx[1]&qx[2]&qx[3]&mode_bar;
  assign b[3]= q_barx[0]&q_barx[1]&q_barx[2]&q_barx[3]&mode;
  or_gate o4(qinx[3],a[3],b[3]);
  
  assign qout=qx;  //output from q of each ff
  
endmodule


//used structurally
module T_flip_flop(
  input t,
  input clk,
  output reg q,q_bar  //for behavioural model
);
  
  initial begin
    q = 0;
    q_bar = 1;
  end

  //behavioural model
  always @(negedge clk)  // specifying positive edge clock pulse
    
    begin
      case({t})
        1'b0: begin q<=q;  q_bar<=q_bar; end
        1'b1: begin q<=~q;  q_bar<=~q_bar; end  // very very important and not  q<=q_bar;  q_bar<=q; which is wrong
      endcase
    end
 
endmodule

module or_gate (y,a,b);
  input a;
  input b;
  output y;

  assign y = a | b;

endmodule
