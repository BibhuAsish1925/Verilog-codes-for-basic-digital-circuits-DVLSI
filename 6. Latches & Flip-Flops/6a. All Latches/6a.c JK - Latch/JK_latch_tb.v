module JK_latch_tb;
    reg j, k, clk;
    wire q, q_bar;
    integer i;

    // if using behavioural, uncomment the behav line and comment the gate line, or vice versa
     JK_latch_behav uut(.j(j),.k(k),.clk(clk),.q(q),.q_bar(q_bar));
    // JK_latch_gate  uut (.j(j), .k(k), .clk(clk), .q(q), .q_bar(q_bar));

    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end

    initial begin

        for (i = 0; i < 4; i = i + 1) begin
            {j,k} = i[1:0];
            #50;
            $display("time=%0t | clk=%b j=%b k=%b | q=%b q_bar=%b",$time, clk, j, k, q, q_bar);
        end
        $finish;
    end
endmodule
