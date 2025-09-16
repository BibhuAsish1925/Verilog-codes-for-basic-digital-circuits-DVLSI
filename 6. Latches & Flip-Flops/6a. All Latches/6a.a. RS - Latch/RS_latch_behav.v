module RS_latch_behav (
    input s, r,
    output reg q, q_bar
);
    always @(*) begin
        case ({s,r})
            2'b00: begin q = 1; q_bar = 1; end
            2'b01: begin q = 1; q_bar = 0; end
            2'b10: begin q = 0; q_bar = 1; end
            2'b11: begin q = 1'bx; q_bar = 1'bx; end
        endcase
    end
endmodule