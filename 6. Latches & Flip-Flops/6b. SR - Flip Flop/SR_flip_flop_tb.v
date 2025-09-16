module SR_flipflop_tb;
    reg s,r,clk;
    wire q,q_bar;
    //integer i;

    // if using behavioural, uncomment the behav line and comment the gate line, or vice versa
    //SR_flip_flop_behav uut (.s(s),.r(r),.clk(clk),.q(q),.q_bar(q_bar) );
     SR_flip_flop_gate uut(.s(s),.r(r),.clk(clk),.q(q),.q_bar(q_bar));

    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end

    initial begin

        s = 0; r = 0; #50;
        s = 0; r = 1; #50;
        s = 1; r = 0; #50;
        s = 1; r = 1; #50;
        s = 0; r = 0; #50;
        s = 1; r = 0; #50;
        s = 0; r = 1; #50;
        s = 1; r = 1; #50;

        $finish;
    end
endmodule
