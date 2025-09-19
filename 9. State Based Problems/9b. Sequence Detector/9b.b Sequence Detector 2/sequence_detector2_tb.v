module sequence_detector2_tb();
  reg clk,rst_n,x;
  wire y,qa, qb, qa_bar, qb_bar;

  sequence_detector2 uut(.x(x), .clk(clk), .rst_n(rst_n),.y(y), .qa(qa), .qb(qb), .qa_bar(qa_bar), .qb_bar(qb_bar));

  initial begin 
  clk = 0; 
  forever #5 clk = ~clk; 
  end

  initial begin
    $monitor("T=%0t | x=%b | qa=%b qb=%b | y=%b", $time, x, qa, qb, y);

    rst_n = 1'b0; x = 1'b1;
    #12 rst_n = 1'b1;    // release reset -> FFs now valid (no X)
    #10 x = 1;
    #10 x = 0;
    #10 x = 0; // y should become 1 here (two zeros)
    #10 x = 1;
    #10 x = 0;
    #10 x = 0; // y should become 1 again
    #20 $finish;
  end

endmodule