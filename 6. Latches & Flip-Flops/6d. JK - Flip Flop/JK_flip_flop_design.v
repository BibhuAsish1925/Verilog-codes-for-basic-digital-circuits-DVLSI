module JK_flip_flop(
  input j,k,
  input clk,
  output reg q,q_bar
);
  
  always @(posedge clk)  // specifying positive edge clock pulse
    
    //simple behavioural model
    /*begin
      if (j==1'b0 && k==1'b0)
        begin
          q<=q;  
          q_bar<=q_bar;           
        end
      else if (j==1'b0 && k==1'b1)
        begin
          q<=1'b0;  q_bar<=1'b1;
        end
      else if (j==1'b1 && k==1'b0)
        begin
          q<=1'b1;  q_bar<=1'b0;
        end
      else if (j==1'b1 && k==1'b1)
        begin
          q<=~q;  q_bar<=~q_bar;   // very very important and not  q<=q_bar;  q_bar<=q; which is wrong
        end
    end*/
  
    // case based behavioural model  
    begin
      case({j,k})
        2'b00: begin q<=q;  q_bar<=q_bar; end
        2'b01: begin q<=1'b0;  q_bar<=1'b1; end
        2'b10: begin q<=1'b1;  q_bar<=1'b0; end
        2'b11: begin q<=~q;  q_bar<=~q_bar; end  // very very important and not  q<=q_bar;  q_bar<=q; which is wrong
      endcase
    end
  
endmodule



