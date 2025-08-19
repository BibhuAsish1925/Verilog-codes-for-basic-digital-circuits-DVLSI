module SR_flip_flop(
  input s,r,
  input clk,
  output reg q,q_bar
);
  
  always @(posedge clk)  // specifying positive edge clock pulse
    
    //simple behavioural model
    /*begin
      if (s==1'b0 && r==1'b0)
        begin
          q<=q;  
          q_bar<=q_bar;           
        end
      else if (s==1'b0 && r==1'b1)
        begin
          q<=1'b0;  q_bar<=1'b1;
        end
      else if (s==1'b1 && r==1'b0)
        begin
          q<=1'b1;  q_bar<=1'b0;
        end
      else if (s==1'b1 && r==1'b1)
        begin
          q<=1'bx;  q_bar<=1'bx;   // x is dont care
        end
    end*/
  
    // case based behavioural model  
    begin
      case({s,r})
        2'b00: begin q<=q;  q_bar<=q_bar; end
        2'b01: begin q<=1'b0;  q_bar<=1'b1; end
        2'b10: begin q<=1'b1;  q_bar<=1'b0; end
        2'b11: begin q<=1'bx;  q_bar<=1'bx; end  // x is dont care
      endcase
    end
  
endmodule



