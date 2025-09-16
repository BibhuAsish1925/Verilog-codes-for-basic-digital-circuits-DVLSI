module bidirectional_4bit_shift_reg_behav(
  input clk, mode,       // 0 = right shift, 1 = left shift
  input Dr, Dl,     // Serial inputs
  output reg [3:0] q 
);

  always @(posedge clk) begin
    if (mode == 0) begin
      // Right shift
      q <= {Dr, q[3:1]};
    end
    else begin
      // Left shift
      q <= {q[2:0], Dl};
    end
  end

endmodule