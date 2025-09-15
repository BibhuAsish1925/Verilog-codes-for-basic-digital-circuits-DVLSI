module segment_7_display_tb;
  reg [3:0] i;
  wire a, b, c, d, e, f, g;
  
  segment_7_display uut (.i(i),.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g));

  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    $display("Time | i | a b c d e f g");
    $display("------------------------");

    for (i = 0; i < 10; i = i + 1) begin
      #100; 
      $display("%4dns | %d | %b %b %b %b %b %b %b", $time, i, a, b, c, d, e,f, g);
    end

    $finish;
  end

endmodule
