// whichever model you want just remove /* */ and change b/w output and output reg

module demux_1x2(
  input in,en,s,   //en is for ckt on and off
  output [1:0]y
  //output reg [1:0]y  // for behavioural model only
);
  
  //dataflow
  assign y[0]= en&~s&in;
  assign y[1]= en&s&in;
      
  
  // behavioural
  /*always @(*)
    begin 
      if(en)
        begin
          if(s == 1'b0) begin
            y[0]=in;
            y[1]=0;
          end
          else if(s==1'b1) begin
            y[0]=0;
            y[1]=in;
          end
                  
        end
      else begin
            y[0]=0;
            y[1]=0;
      end
    end*/
endmodule
 
  