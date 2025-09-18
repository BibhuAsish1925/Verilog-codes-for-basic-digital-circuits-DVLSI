module fsm_moore_eg_tb;
    reg clk, rst_n, in;
    wire y;
    wire [1:0] state_num;  // debug signal from FSM

    // Instantiate FSM
    fsm_moore_eg uut(.clk(clk),.rst_n(rst_n),.in(in),.y(y),.state_num(state_num));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Stimulus
    initial begin

        $monitor("T=%0t | in=%b | state=%0d | y=%b",$time, in, state_num, y);
        rst_n = 0; in = 0;
        #5 rst_n = 1;  // release reset

        // State transitions
        #10 in = 1;  // move to S1
        #10 in = 1;  // move to S2
        #10 in = 0;  // back to S0
        #10 in = 1;  // move to S1
        #20 in = 1;  // go to S2, then loop

        #50 $finish;
    end


endmodule
