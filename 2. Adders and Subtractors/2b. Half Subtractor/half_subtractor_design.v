// whichever model you want just remove /* */ and change b/w output and output reg

module half_sub(
  input a,b,
  //output diff, bor
  output reg diff, bor //behvioural only
  );
  wire x; //in case of gatelevel only
  
  
  //dataflow
  /*assign diff = a ^ b;
  assign bor = ~a & b;*/
  
  
  //behavioural
  always @(a,b)
    begin 
      if(a==1'b0 && b==1'b0)
        begin 
          diff<=1'b0;
          bor<=1'b0;
        end
      else if(a==1'b0 && b==1'b1)
        begin 
          diff<=1'b1;
          bor<=1'b1;
        end
      else if(a==1'b1 && b==1'b0)
        begin 
          diff<=1'b1;
          bor<=1'b0;
        end
      else if(a==1'b1 && b==1'b1)
        begin 
          diff<=1'b0;
          bor<=1'b0;
        end
    end
  
  
  //gatelevel
  /*xor d(diff,a,b);
  not n(x,a);
  and bo(bor,x,b);*/
             
endmodule