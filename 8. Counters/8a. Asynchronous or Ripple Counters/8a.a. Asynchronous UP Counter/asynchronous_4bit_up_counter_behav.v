module asynchronous_4bit_up_counter_behav(
  input clk, t,
  output reg [3:0] q
);
  initial q = 4'b0000;

  always @(posedge clk) begin
    if (t) q[0] <= ~q[0]; 
  end

  always @(negedge q[0]) begin
    if (t) q[1] <= ~q[1];  
  end

  always @(negedge q[1]) begin
    if (t) q[2] <= ~q[2];   
  end

  always @(negedge q[2]) begin
    if (t) q[3] <= ~q[3];   
  end
endmodule