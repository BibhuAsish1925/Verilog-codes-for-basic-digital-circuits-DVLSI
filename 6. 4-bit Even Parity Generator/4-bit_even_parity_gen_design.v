module bit_4_even_parity_gen(
  input b0,b1,b2,b3,
  wire w[0:1], //for gatelevel and structural only
  //output y  // for other forms
  output reg y //for behavioural only
  
);
  
  //dataflow
  //assign y = b0 ^ b1 ^ b2 ^ b3;
  
  
  //behavioral
  /*always @(b3 or b2 or b1 or b0)
    begin
      if (b3==1'b0 && b2==1'b0 && b1==1'b0 && b0==1'b0)
        begin 
          y=1'b0;
        end
      else if (b3==1'b0 && b2==1'b0 && b1==1'b0 && b0==1'b1)
        begin 
          y=1'b1;
        end
      else if (b3==1'b0 && b2==1'b0 && b1==1'b1 && b0==1'b0)
        begin 
          y=1'b1;
        end
      else if (b3==1'b0 && b2==1'b0 && b1==1'b1 && b0==1'b1)
        begin 
          y=1'b0;
        end
      else if (b3==1'b0 && b2==1'b1 && b1==1'b0 && b0==1'b0)
        begin 
          y=1'b1;
        end
      else if (b3==1'b0 && b2==1'b1 && b1==1'b0 && b0==1'b1)
        begin 
          y=1'b0;
        end
      else if (b3==1'b0 && b2==1'b1 && b1==1'b1 && b0==1'b0)
        begin 
          y=1'b0;
        end
      else if (b3==1'b0 && b2==1'b1 && b1==1'b1 && b0==1'b1)
        begin 
          y=1'b1;
        end
      else if (b3==1'b1 && b2==1'b0 && b1==1'b0 && b0==1'b0)
        begin 
          y=1'b1;
        end
      else if (b3==1'b1 && b2==1'b0 && b1==1'b0 && b0==1'b1)
        begin 
          y=1'b0;
        end
      else if (b3==1'b1 && b2==1'b0 && b1==1'b1 && b0==1'b0)
        begin 
          y=1'b0;
        end
      else if (b3==1'b1 && b2==1'b0 && b1==1'b1 && b0==1'b1)
        begin 
          y=1'b1;
        end
      else if (b3==1'b1 && b2==1'b1 && b1==1'b0 && b0==1'b0)
        begin 
          y=1'b0;
        end
      else if (b3==1'b1 && b2==1'b1 && b1==1'b0 && b0==1'b1)
        begin 
          y=1'b1;
        end
      else if (b3==1'b1 && b2==1'b1 && b1==1'b1 && b0==1'b0)
        begin 
          y=1'b1;
        end
      else if (b3==1'b1 && b2==1'b1 && b1==1'b1 && b0==1'b1)
        begin 
          y=1'b0;
        end
    end*/
  
  
  
  // behavioral using case
 /*always @(b0 or b1 or b2 or b3) 
   begin
    case ({b3, b2, b1, b0})
      4'b0000: y = 1'b0; 
      4'b0001: y = 1'b1;
      4'b0010: y = 1'b1;
      4'b0011: y = 1'b0;
      4'b0100: y = 1'b1;
      4'b0101: y = 1'b0;
      4'b0110: y = 1'b0;
      4'b0111: y = 1'b1;
      4'b1000: y = 1'b1;
      4'b1001: y = 1'b0;
      4'b1010: y = 1'b0;
      4'b1011: y = 1'b1;
      4'b1100: y = 1'b0;
      4'b1101: y = 1'b1;
      4'b1110: y = 1'b1;
      4'b1111: y = 1'b0;
    endcase
  end*/
  
  
  
  //gatelevel
  /*xor x1(w[0],b0,b1);
  xor x2(w[1],b2,w[0]);
  xor x3(y,b3,w[1]);*/
  
  
  //structural model (open the structural model function below)
  xor1 x1(w[0],b1,b0);
  xor1 x2(w[1],b2,w[0]);
  xor1 x3(y,b3,w[1]);
  
          
endmodule



//for structural model
module xor1(c,a,b);
  input a,b;
  output c;

  assign c = a ^ b;
endmodule
            
