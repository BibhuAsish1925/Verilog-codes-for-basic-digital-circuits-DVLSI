module fsm_mealy_eg (
    input clk,
    input rst_n,
    input in,
    output reg y,
    output reg [1:0] state_num   // observe on waveform
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

    // Next state logic
    always @(*) begin
        case (state)
            S0: next_state = in ? S1 : S0;
            S1: next_state = in ? S2 : S0;
            S2: next_state = in ? S0 : S1;
            default: next_state = S0;
        endcase
    end

    // Mealy output (depends on state + input)
    always @(*) begin
        case (state)
            S0: y = 0;
            S1: y = 0;
            S2: y = (in ? 1 : 0);  // Output 1 only in S2 when in=1
            default: y = 0;
        endcase
    end

    // Expose state to waveform
    always @(*) begin
        state_num = state;
    end
endmodule