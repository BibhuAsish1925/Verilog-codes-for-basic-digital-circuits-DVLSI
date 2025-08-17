module demux_1x2(
  input in,en,s,   //en is for ckt on and off
  output reg [1:0]y
);
  
  always @(*)
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

    end
endmodule
 
  