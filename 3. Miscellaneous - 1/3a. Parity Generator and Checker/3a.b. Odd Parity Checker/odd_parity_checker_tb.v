module tb;
  reg [3:0]in;
  reg p;
  wire error;

  odd_parity_check uut(in,p,error);

  initial begin
    $dumpfile("dump.vcd"); $dumpvars;

    in = 4'b0101; p = 1'b0; #10;  // 2 ones → even → p=0 → total=2 → error=1
    in = 4'b1101; p = 1'b1; #10;  // 3 ones → p=1 → total=4 → error=1
    in = 4'b0111; p = 1'b0; #10;  // 3 ones → p=0 → total=3 → error=0
    in = 4'b1001; p = 1'b1; #10;  // 2 ones → p=1 → total=3 → error=0

    $finish;
  end
endmodule