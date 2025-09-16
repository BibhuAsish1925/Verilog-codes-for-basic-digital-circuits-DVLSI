module D_flip_flop_tb();
    reg d,clk;
    wire q,q_bar;

    // if using behavioural, uncomment the behav line and comment the gate line, or vice versa
    // D_flip_flop_behav uut(.d(d),.clk(clk),.q(q),.q_bar(q_bar));
     D_flip_flop_gate  uut(.d(d),.clk(clk),.q(q),.q_bar(q_bar));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
       

        d = 0; #10;
        d = 1; #10;
        d = 0; #10;
        d = 1; #10;
        d = 1; #10;
        d = 0; #10;
        d = 0; #10;

        $finish;
    end
endmodule