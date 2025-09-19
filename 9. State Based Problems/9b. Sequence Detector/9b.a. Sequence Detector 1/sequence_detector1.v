// Sequence detector: detects 3 or more consecutive 1's
module sequence_detector1(
    input x, clk,
    output y, qa_bar, qb_bar
    );
    
    wire and1, and2, and3, or1, or2;
    wire qa, qb;
    
    assign and1 = x & qb;
    assign and2 = x & qa;
    assign and3 = x & (~qb);
    
    assign or1 = and1 | and2;
    assign or2 = and2 | and3;
    
    D_flip_flop_behav d_ff1(.d(or1), .clk(clk), .q(qa), .q_bar(qa_bar));
    D_flip_flop_behav d_ff2(.d(or2), .clk(clk), .q(qb), .q_bar(qb_bar)); 
    
    assign y = x & qa;    
    
endmodule

// D Flip-Flop
module D_flip_flop_behav(
    input d, clk,
    output reg q,
    output q_bar
);
    always @(posedge clk) begin
        q <= d;
    end
    assign q_bar = ~q;
endmodule
