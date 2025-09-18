module fsm_mealy_eg_tb();
reg clk, rst_n, in;
    wire y;
    wire [1:0] state_num;

    fsm_mealy_eg uut(.clk(clk), .rst_n(rst_n), .in(in), .y(y), .state_num(state_num));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin

        $monitor("T=%0t | in=%b | state=%0d | y=%b",$time, in, state_num, y);
        // Reset
        rst_n = 0; in = 0;
        #5 rst_n = 1;

        // Stimulus
        #10 in = 1;
        #10 in = 1;
        #10 in = 0;
        #10 in = 0;
        #10 in = 1;
        #50 $finish;
    end
    
endmodule