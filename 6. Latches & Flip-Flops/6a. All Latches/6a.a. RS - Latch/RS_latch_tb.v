module RS_latch_tb;
    reg s, r;
    wire q, q_bar;
    integer i;

    // if using behavioural, uncomment the behav line and comment the gate line, or vice versa
    // RS_latch_behav uut(.s(s),.r(r),.q(q),.q_bar(q_bar));
     RS_latch_gate  uut (.s(s), .r(r), .q(q), .q_bar(q_bar));

    initial begin
        {s,r} = 0;
        for (i = 0; i < 4; i = i + 1) begin
            {s,r} = i;
            #10;
            $display("time=%0t | s=%b r=%b | q=%b q_bar=%b",
                     $time, s, r, q, q_bar);
        end
        $finish;
    end
endmodule