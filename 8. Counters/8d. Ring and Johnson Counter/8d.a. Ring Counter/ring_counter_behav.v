module ring_counter_behav (
  input clk, rst_n,
  output reg [3:0] q
);
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
      q <= 4'b0001;        
    else
      q <= {q[2:0], q[3]}; 
  end
endmodule