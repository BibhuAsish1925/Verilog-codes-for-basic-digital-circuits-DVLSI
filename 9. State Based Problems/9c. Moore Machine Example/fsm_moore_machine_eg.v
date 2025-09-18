module fsm_moore_eg (
    input clk,rst_n,in,
    output reg y,
    output reg [1:0] state_num   // debug: expose state to waveform
);

    // State encoding
    localparam S0 = 2'b00,
               S1 = 2'b01,
               S2 = 2'b10;

    reg [1:0] state, next_state;

    // State register
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            state <= S0;
        else
            state <= next_state;
    end

    // Next-state logic
    always @(*) begin
        case (state)
            S0: next_state = (in ? S1 : S0);
            S1: next_state = (in ? S2 : S0);
            S2: next_state = (in ? S0 : S1);
            default: next_state = S0;
        endcase
    end

    // Output logic (Moore)
    always @(*) begin
        case (state)
            S0: y = 0;
            S1: y = 0;
            S2: y = 1;
            default: y = 0;
        endcase
    end

    // Debug signal for waveform
    always @(*) begin
        state_num = state;  // shows 0,1,2 in the waveform
    end

endmodule
