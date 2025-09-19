// Random_seq - 0,1,6,8,9,13,14,11,4,...
module Random_seq_detector2(
  input clk,
  output [3:0] qout
);

  wire [3:0] D;      
  wire [3:0] qx, q_barx;

  assign D[0] = (~qx[0] & ~qx[2]) | (~qx[0] & qx[3]) | (qx[0] & ~qx[1] & ~qx[2] & qx[3]);
  assign D[1] = (qx[2] & qx[3]) | (qx[0] & ~qx[3]);
  assign D[2] = qx[0];
  assign D[3] = (~qx[0] & ~qx[2] & qx[3]) | (qx[1] & qx[2]) | (qx[0] & ~qx[1] & qx[3]);

  D_flip_flop dff0(D[0], clk, qx[0], q_barx[0]);
  D_flip_flop dff1(D[1], clk, qx[1], q_barx[1]);
  D_flip_flop dff2(D[2], clk, qx[2], q_barx[2]);
  D_flip_flop dff3(D[3], clk, qx[3], q_barx[3]);

  assign qout = qx;  

endmodule


module D_flip_flop(
  input d,
  input clk,
  output reg q,
  output q_bar
);

  initial begin
    q = 0;  
  end

  always @(posedge clk) begin
    q <= d;
  end

  assign q_bar = ~q;

endmodule