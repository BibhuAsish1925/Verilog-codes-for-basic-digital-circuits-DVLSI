module sequencial_detector1_tb();
    reg clk, x;
    wire y, qa_bar, qb_bar;

    sequence_detector1 uut(.x(x),.clk(clk),.y(y),.qa_bar(qa_bar),.qb_bar(qb_bar));

    initial begin 
        clk = 0; 
        forever #5 clk = ~clk;  // 10ns period
    end

    initial begin

        $monitor("T=%0t | x=%b | y=%b | qa_bar=%b | qb_bar=%b",$time, x, y, qa_bar, qb_bar);
        x = 0;
        #10;
        x = 1; #10;   
        x = 1; #10;   
        x = 1; #10;   
        x = 1; #10;   
        x = 0; #10;   
        x = 1; #10;   
        x = 1; #10;   
        x = 0; #10;   
        x = 1; #10;   
        x = 1; #10;   
        x = 1; #10;   
        #20 $finish;
    end

endmodule