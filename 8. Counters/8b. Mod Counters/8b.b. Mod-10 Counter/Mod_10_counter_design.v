module mod_10_counter(
  input t,
  input clk,
  output [3:0]q,q_bar
);
  wire [3:0]qin;
  wire clr;
  
  input_4_nand x1(~qin[0],qin[1],~qin[2],qin[3],clr);
  
  T_flip_flop tff0(t,clk,1'b1,clr,qin[0],q_bar[0]);
  T_flip_flop tff1(t,qin[0],1'b1,clr,qin[1],q_bar[1]);
  T_flip_flop tff2(t,qin[1],1'b1,clr,qin[2],q_bar[2]);
  T_flip_flop tff3(t,qin[2],1'b1,clr,qin[3],q_bar[3]);
  
  assign q=qin;   
  
endmodule


//used structurally
module T_flip_flop (
  input t,clk, pst,clr,
  output reg q,q_bar
);

  //initialise
  initial begin
    q=0;
    q_bar=1;
  end

  //we know if clr=0 then q=0,q_bar=1 and when pst=0 then q_bar=0,q=1
  always @(negedge pst or negedge clr or negedge clk) begin
    if (!clr) begin  //not of clr means low
      q<=0;
      q_bar<=1;
    end
    else if (!pst) begin  //not of pst means pst is low
      q<=1;
      q_bar<=0;
    end
    
    else begin
      case (t)
        1'b0: begin q<=q;     q_bar<=q_bar; end
        1'b1: begin q<=~q;    q_bar<=~q_bar; end
      endcase
    end
  end

endmodule


module input_4_nand(
  input a,b,c,d,
  output y
);
  
  assign y = ~(a&b&c&d);
  
endmodule