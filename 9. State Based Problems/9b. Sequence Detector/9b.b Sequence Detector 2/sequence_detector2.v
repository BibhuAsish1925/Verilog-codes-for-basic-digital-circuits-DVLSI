// Sequence detector: detects 2 or more consecutive 0's using Non-Overlapping method
module sequence_detector2 (
  input x,clk, rst_n,
  output y, qa, qb, qa_bar, qb_bar
   );
   
  wire d_qa, d_qb;

  assign d_qa = (~x & ~qa) | (qb);        
  assign d_qb = (~x & qa)  | (~x & qb);     

  dff_reset dff0(.d(d_qa), .clk(clk), .rst_n(rst_n), .q(qa), .q_bar(qa_bar));
  dff_reset dff1(.d(d_qb), .clk(clk), .rst_n(rst_n), .q(qb), .q_bar(qb_bar));

  assign y = qb;
endmodule

module dff_reset (
  input d,clk, rst_n,
  output reg  q,
  output q_bar
);
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) q <= 1'b0;
    else q <= d;
  end
  assign q_bar = ~q;
endmodule