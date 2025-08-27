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

