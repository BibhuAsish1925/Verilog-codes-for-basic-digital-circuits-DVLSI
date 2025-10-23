module BCD_up_counter(
  input clk, rst, 
  output reg [3:0] count0, count1
);
  always @(posedge clk)
  begin
  	if (rst)
	   count0 <= 4'b0;
	else
	 begin
		if (count0 == 4'd9)
			count0 <= 4'b0;
		else
			count0 <= count0 + 1'b1;
		end
	end
	always @(posedge clk)
	  begin 
		if (rst)
			count1 <= 4'b0;
		else
		  begin
			if (count0 == 4'd9 && count1 < 4'd9)
				count1 <= count1 + 1'b1;
			else if (count0 == 4'd9 && count1 == 4'd9)
				count1 <= 4'b0;
			else
				count1 <= count1;
		end
	end
endmodule

