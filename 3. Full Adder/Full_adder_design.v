// whichever model you want just remove /* */ and change b/w output and output reg

module full_adder(
  input a,b,cin,
  //output sum,cout
  output reg sum,cout  //behvioural only
);
  wire w1,w2,w3;   //wire or inout for gatelevel and structural only
  
  
  //dataflow
  /*assign sum = a ^ b ^ cin;
  assign cout = (a & b) | (b & cin) | (a & cin);*/
  

  //behavioural
  always @(a,b,cin)
    begin 
      if(a==1'b0 && b==1'b0 && cin==1'b0)
        begin 
          sum<=1'b0;
          cout<=1'b0;
        end
      else if(a==1'b0 && b==1'b0 && cin==1'b1)
        begin 
          sum<=1'b1;
          cout<=1'b0;
        end
      else if(a==1'b0 && b==1'b1 && cin==1'b0)
        begin 
          sum<=1'b1;
          cout<=1'b0;
        end
      else if(a==1'b0 && b==1'b1 && cin==1'b1)
        begin 
          sum<=1'b0;
          cout<=1'b1;
        end
      else if(a==1'b1 && b==1'b0 && cin==1'b0)
        begin 
          sum<=1'b1;
          cout<=1'b0;
        end
      else if(a==1'b1 && b==1'b0 && cin==1'b1)
        begin 
          sum<=1'b0;
          cout<=1'b1;
        end
      else if(a==1'b1 && b==1'b1 && cin==1'b0)
        begin 
          sum<=1'b0;
          cout<=1'b1;
        end
      else if(a==1'b1 && b==1'b1 && cin==1'b1)
        begin 
          sum<=1'b1;
          cout<=1'b1;
        end
    end
  
  
  //gatelevel
  /*xor x1(w1,a,b);
  and c1(w2,a,b);
  xor x2(sum,w1,cin);
  and c2(w3,w1,cin);
  or o1(cout,w3,w2);*/
  
  
  //structural (using half adder) 
  /*half_adder h1(a, b, w1, w2);
  half_adder h2(w1, cin, sum, w3);
  assign cout = w2 | w3;*/
  
             
endmodule



//for structural model comment out
/*module half_adder(a,b,s,c);
  input a,b;
  output s,c;
  assign s = a ^ b;
  assign c = a & b;
endmodule*/
  
  
  

