module Asynchronous_4bit_up_down_counter(
  input t,clk,
  input mode,    //if mode is 0 then Up else Down
  output [3:0]qout
);
  wire [3:0]qinx,a,b,qx,q_barx;
  wire mode_bar;
  
  assign mode_bar=~mode;
  
  T_flip_flop tff0(t,clk,qx[0],q_barx[0]);
  and_gate a1(a[0],qx[0],mode_bar);
  and_gate a2(b[0],q_barx[0],mode);
  or_gate o1(qinx[0],a[0],b[0]);
  
  T_flip_flop tff1(t,qinx[0],qx[1],q_barx[1]);
  and_gate a3(a[1],qx[1],mode_bar);
  and_gate a4(b[1],q_barx[1],mode);
  or_gate o2(qinx[1],a[1],b[1]);
  
  T_flip_flop tff2(t,qinx[1],qx[2],q_barx[2]);
  and_gate a5(a[2],qx[2],mode_bar);
  and_gate a6(b[2],q_barx[2],mode);
  or_gate o3(qinx[2],a[2],b[2]);
  
  T_flip_flop tff3(t,qinx[2],qx[3],q_barx[3]);
  and_gate a7(a[3],qx[3],mode_bar);
  and_gate a8(b[3],q_barx[3],mode);
  or_gate o4(qinx[3],a[3],b[3]);
  
  assign qout=qinx;  
  
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