module synchronous_3bit_down_counter(
  input t,clk,
  output [2:0]q,q_bar
  
);
  
  wire [2:0]qx;
  wire a;
  
  T_flip_flop tff0(t,clk,q[0],qx[0]);
  T_flip_flop tff1(qx[0],clk,q[1],qx[1]);
  assign a= ~q[0] & ~q[1];
  T_flip_flop tff2(a,clk,q[2],qx[2]);
  
  assign q_bar=qx;
  
endmodule
  
  
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
  always @(posedge clk)  // specifying positive edge clock pulse
    
    begin
      case({t})
        1'b0: begin q<=q;  q_bar<=q_bar; end
        1'b1: begin q<=~q;  q_bar<=~q_bar; end  // very very important and not  q<=q_bar;  q_bar<=q; which is wrong
      endcase
    end
 
endmodule
