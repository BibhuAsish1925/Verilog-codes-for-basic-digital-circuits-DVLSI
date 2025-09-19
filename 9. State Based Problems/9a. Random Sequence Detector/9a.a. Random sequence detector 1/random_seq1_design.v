//Random_seq - 7,4,1,6,2,5,...
module Random_seq_detector1(
  input clk,
  output [2:0]qout
);
  
  wire [2:0]t; //imp.
  wire [2:0]qx,q_barx;
  
  //derivation done on papers then executed here
  assign t[0] = (q_barx[2]) | (qx[0]&qx[1]) | (q_barx[0]&q_barx[1]);
  assign t[1] = qx[0] | q_barx[2];
  assign t[2] = q_barx[2] | q_barx[0];
  
  T_flip_flop tff0(t[0],clk,qx[0],q_barx[0]);  
  T_flip_flop tff1(t[1],clk,qx[1],q_barx[1]);
  T_flip_flop tff2(t[2],clk,qx[2],q_barx[2]);  
  
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
