module Asynchronous_4bit_down_counter(
  input t,clk,
  output [3:0]q, q_bar
);
  wire [3:0]qin;
  
  T_flip_flop tff0(t,clk,q[0],qin[0]);
  T_flip_flop tff1(t,qin[0],q[1],qin[1]);
  T_flip_flop tff2(t,qin[1],q[2],qin[2]);
  T_flip_flop tff3(t,qin[2],q[3],qin[3]);
  
  assign q_bar=qin;  //in down counters output is from q's and the N.S clk is from q_bar we considered
  
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