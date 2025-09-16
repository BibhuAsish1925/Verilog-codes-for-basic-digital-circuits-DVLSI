module D_latch_tb();
    reg d, clk;
    wire q, q_bar;
    integer i;

    // if using behavioural, uncomment the behav line and comment the gate line, or vice versa
    // D_latch_behav uut(.d(d),.clk(clk),.q(q),.q_bar(q_bar));
     D_latch_gate  uut(.d(d),.clk(clk),.q(q),.q_bar(q_bar));

    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end

    initial begin
        

        for (i = 0; i < 2; i = i + 1) begin
            d = i % 2;
            #50;
            $display("time=%0t | clk=%b d=%b | q=%b q_bar=%b",$time, clk, d, q, q_bar);
        end
        $finish;
    end
endmodule