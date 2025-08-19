// whichever model you want just remove /* */ and change b/w output and output reg

module half_adder(
  input a,b,
  //output sum, carry,  // for dataflow and gateflow
  output reg sum, carry //behvioural only
  );
  
  
  //dataflow
  /*assign sum=a^b;
  assign carry= a&b;*/
  
  
  //behavioural
  always @(a,b)
    begin 
      if(a==1'b0 && b==1'b0)
        begin 
          sum<=1'b0;
          carry<=1'b0;
        end
      else if(a==1'b0 && b==1'b1)
        begin 
          sum<=1'b1;
          carry<=1'b0;
        end
      else if(a==1'b1 && b==1'b0)
        begin 
          sum<=1'b1;
          carry<=1'b0;
        end
      else if(a==1'b1 && b==1'b1)
        begin 
          sum<=1'b0;
          carry<=1'b1;
        end
    end
  
  
  //gatelevel
  /*xor s(sum,a,b);
  and co(carry,a,b);*/
             
endmodule


