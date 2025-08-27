module Asynchronous_4bit_up_counter(
  input t,clk,
  output [3:0]q, q_bar
);
  wire [3:0]qin;
  
  T_flip_flop tff0(t,clk,qin[0],q_bar[0]);
  T_flip_flop tff1(t,qin[0],qin[1],q_bar[1]);
  T_flip_flop tff2(t,qin[1],qin[2],q_bar[2]);
  T_flip_flop tff3(t,qin[2],qin[3],q_bar[3]);
  
  assign q=qin;
  
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