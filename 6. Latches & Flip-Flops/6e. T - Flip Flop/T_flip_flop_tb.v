module T_flip_flop_tb();
    reg t, clk, pst, clr;
    wire q, q_bar;
    integer i;

    // if using behavioural, uncomment the behav line and comment the gate line, or vice versa
     T_flip_flop_behav uut(.t(t),.clk(clk),.pst(pst),.clr(clr),.q(q),.q_bar(q_bar));
    // T_flip_flop_gate  uut(.t(t),.clk(clk),.pst(pst),.clr(clr),.q(q),.q_bar(q_bar)); 

    initial begin
        clk = 0; 
        forever #10 clk = ~clk;
    end

    initial begin

        clr = 1; pst = 1; t = 0;
        #50 clr = 0; #50 clr = 1;   // clear
        #50 pst = 0; #50 pst = 1;   // preset

        for (i = 0; i < 6; i = i + 1) begin
            t = i % 2;
            #50;
            $display("time=%0t | clk=%b t=%b pst=%b clr=%b | q=%b q_bar=%b",$time, clk, t, pst, clr, q, q_bar);
        end

        $finish;
    end
endmodule