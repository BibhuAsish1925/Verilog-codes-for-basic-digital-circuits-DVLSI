module mod_6_counter_tb;
    reg clk;
    reg rst_n;
    wire [2:0] q;

    // Uncomment the one you want to test
    // mod6_counter_behav uut (.clk(clk), .rst_n(rst_n), .q(q));
    mod6_counter_struct uut (.clk(clk), .rst_n(rst_n), .q(q));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Stimulus
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb);
        $monitor("Time=%0t | rst_n=%b | q=%b (%0d)", $time, rst_n, q, q);

        rst_n = 0; #15;    // reset low
        rst_n = 1; #100;   // count
        rst_n = 0; #10;    // reset again
        rst_n = 1; #100;   // count again

        $finish;
    end
endmodule
