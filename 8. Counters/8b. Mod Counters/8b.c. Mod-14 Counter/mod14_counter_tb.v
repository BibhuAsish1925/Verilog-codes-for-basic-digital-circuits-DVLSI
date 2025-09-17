module mod14_counter_tb();

    reg clk, rst_n;
    wire [3:0] q;
 
    // Uncomment the one you want to test
    mod14_counter_behav uut(.clk(clk), .rst_n(rst_n), .q(q));
    //mod14_counter_struct uut(.clk(clk), .rst_n(rst_n), .q(q));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin

        $monitor("Time=%0t | rst_n=%b | q=%b (%0d)", $time, rst_n, q, q);

        rst_n = 0; #20;
        rst_n = 1; #200;
        rst_n = 0; #10;
        rst_n = 1; #100;
        $finish;
    end
endmodule