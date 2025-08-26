module tb;

  reg clk, mode, Dr, Dl;
  wire [3:0] q;
  wire [3:0] q_bar;

  // Instantiate the shift register
  bidirectional_4bit_shift_reg uut (.mode(mode),.Dr(Dr),.Dl(Dl),.clk(clk),.q(q),.q_bar(q_bar));

  // Clock generation: 10ns period
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    $display("Time\tMode\tDr\tDl\tq\tq_bar");
    $monitor("%0t\t%b\t%b\t%b\t%b\t%b", $time, mode, Dr, Dl, q, q_bar);

       // Initial state
    mode = 0; Dr = 0; Dl = 0; #10;

    // Shift right: inject pattern 1010 from Dr
    mode = 0;
    Dr = 1; #10;
    Dr = 0; #10;
    Dr = 1; #10;
    Dr = 0; #10;

    // Pause
    Dr = 0; #10;

    // Shift left: inject pattern 1101 from Dl
    mode = 1;
    Dl = 1; #10;
    Dl = 1; #10;
    Dl = 0; #10;
    Dl = 1; #10;

    // Pause
    Dl = 0; #10;

    // Alternate directions mid-sequence
    mode = 0; Dr = 1; #10;
    mode = 1; Dl = 0; #10;
    mode = 0; Dr = 0; #10;
    mode = 1; Dl = 1; #10;

    // Final cleanup
    mode = 0; Dr = 0; Dl = 0; #10;

    $finish;
  end

endmodule