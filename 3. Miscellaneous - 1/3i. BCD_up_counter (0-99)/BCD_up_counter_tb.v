module BCD_up_counter_tb();

	reg clk;
	reg rst;

	wire [3:0] count0;
	wire [3:0] count1;

	BCD_up_counter uut (.clk(clk),.rst(rst),.count0(count0),.count1(count1));

	initial begin
		clk = 0;
		rst = 0;
		#410;
		$finish;
	end
		always#2 clk=~clk;
		
		task reset;
			begin
				@(negedge clk)
					rst=1'b1;
				@(negedge clk)
					rst=1'b0;
			end
		endtask
		
		initial begin
			reset;
		$monitor("Time=%0d, reset:%d |count:%d %d  ",$time,rst,count1,count0);
		end
endmodule