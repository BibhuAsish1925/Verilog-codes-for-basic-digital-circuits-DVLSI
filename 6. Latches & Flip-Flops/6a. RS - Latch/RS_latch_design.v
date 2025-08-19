module RS_latch(
  input s,r,
  output reg q,q_bar
);
  
  //remember it is prefered to consider RS-latch not SR-latch when NAND gates are used**
  
  always @({s,r})
    begin
      if (s==1'b0 && r==1'b0)
        begin
          q<=1'b1;  q_bar<=1'b1;
        end
      else if (s==1'b1 && r==1'b0)
        begin
          q<=1'b0;  q_bar<=1'b1;
        end
      else if (s==1'b0 && r==1'b1)
        begin
          q<=1'b1;  q_bar<=1'b0;
        end
      else if (s==1'b1 && r==1'b1)
        begin
          q<=1'bx;  q_bar<=1'bx;  // x is dont care
        end
    end
endmodule
