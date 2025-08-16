// whichever model you want just remove /* */ and change b/w output and output reg

module full_subtractor(
  input a,b,bin,
  //output sum,cout
  output reg diff,bout  //behvioural only
);
  //wire  x1,x2,w1,w2,w3;   //wire or inout for gatelevel and structural only
  
  
  //dataflow
  assign diff = a ^ b ^ bin;
  assign bout = (~a & b) | (b & bin) | (~a & bin);

  //behavioural
  /*always @(a,b,bin)
    begin 
      if(a==1'b0 && b==1'b0 && bin==1'b0)
        begin 
          diff<=1'b0;
          bout<=1'b0;
        end
      else if(a==1'b0 && b==1'b0 && bin==1'b1)
        begin 
          diff<=1'b1;
          bout<=1'b1;
        end
      else if(a==1'b0 && b==1'b1 && bin==1'b0)
        begin 
          diff<=1'b1;
          bout<=1'b1;
        end
      else if(a==1'b0 && b==1'b1 && bin==1'b1)
        begin 
          diff<=1'b0;
          bout<=1'b1;
        end
      else if(a==1'b1 && b==1'b0 && bin==1'b0)
        begin 
          diff<=1'b1;
          bout<=1'b0;
        end
      else if(a==1'b1 && b==1'b0 && bin==1'b1)
        begin 
          diff<=1'b0;
          bout<=1'b0;
        end
      else if(a==1'b1 && b==1'b1 && bin==1'b0)
        begin 
          diff<=1'b0;
          bout<=1'b0;
        end
      else if(a==1'b1 && b==1'b1 && bin==1'b1)
        begin 
          diff<=1'b1;
          bout<=1'b1;
        end
    end*/
  
  
  //gatelevel
  /*xor xa(w1,a,b);
  not n1(x1,a);
  and c1(w2,x1,b);
  xor xb(diff,w1,bin);
  not n2(x2,w1);
  and c2(w3,x2,bin);
  or o1(bout,w3,w2);*/
  
  
  //structural
  /*half_subtractor h1(a, b, w1, w2);
  half_subtractor h2(w1, bin, diff, w3);
  assign bout = w2 | w3;*/
  
             
endmodule



//for structural model comment out
/*module half_subtractor(a,b,d,bo);
  input a,b;
  output d,bo;
  assign d = a ^ b;
  assign bo = ~a & b;
endmodule*/
  
  
  

