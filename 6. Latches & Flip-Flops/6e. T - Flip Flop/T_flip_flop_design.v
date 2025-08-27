module T_flip_flop (
  input t,clk, pst,clr,
  output reg q,q_bar
);

  //initialise
  initial begin
    q = 0;
    q_bar = 1;
  end

  always @(negedge pst or negedge clr or negedge clk) begin
    if (!clr) begin
      q     <= 0;
      q_bar <= 1;
    end
    else if (!pst) begin
      q     <= 1;
      q_bar <= 0;
    end
    
    else begin
      case (t)
        1'b0: begin q <= q;     q_bar <= q_bar; end
        1'b1: begin q <= ~q;    q_bar <= ~q_bar; end
      endcase
    end
  end

endmodule
