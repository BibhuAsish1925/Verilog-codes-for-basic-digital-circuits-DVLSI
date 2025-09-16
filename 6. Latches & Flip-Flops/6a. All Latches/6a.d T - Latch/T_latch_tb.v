module T_latch_tb;
    reg t, clk;
    wire q, q_bar;
    integer i;

    // if using behavioural, uncomment the behav line and comment the gate line, or vice versa
    // T_latch_behav uut(.t(t),.clk(clk),.q(q),.q_bar(q_bar));
     T_latch_gate  uut(.t(t),.clk(clk),.q(q),.q_bar(q_bar));
    
    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end

    initial begin

        for (i = 0; i < 2; i = i + 1) begin
            t = i % 2;
            #50;
            $display("time=%0t | clk=%b t=%b | q=%b q_bar=%b",$time, clk, t, q, q_bar);
        end
        $finish;
    end
endmodule