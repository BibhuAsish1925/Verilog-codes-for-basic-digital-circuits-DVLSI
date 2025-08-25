module tb();
  reg s_lbar,clk;
  reg [3:0]din;
  wire q_out;
  wire [3:0] q_bar;

  piso_4bit_shift_reg uut(.s_lbar(s_lbar),.din(din),.clk(clk),.q_out(q_out),.q_bar(q_bar));

  // Clock generation: 10ns period
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    
    $dumpfile("dump.vcd"); $dumpvars;
    $monitor("%0t\t%b\t%b\t%b\t%b\t%b", $time, s_lbar, clk, din, q_out, q_bar);

    // Shift mode --> shift=1(high), Load=0 => Load_bar=1 means s_lbar=1
    s_lbar = 1; din = 4'b1011; #10; #10; #10;    
    s_lbar = 1; din = 4'b0111; #10; #10; #10; #10;
    s_lbar = 1; din = 4'b1111; #10; #10; #10; #10; #10; #10; #10;
    s_lbar = 1; din = 4'b0000; #10; #10; #10; #10;
    #10;
    
    // Load mode --> Load=1 => Load_bar=0, shift=0(low) means s_lbar=0
    s_lbar = 0; din = 4'b1011; #10; #10; #10; #10;
    s_lbar = 0; din = 4'b0110; #10; #10; #10; #10;
    s_lbar = 0; din = 4'b1111; #10; #10; #10; #10;
    
    $finish;
  end

endmodule