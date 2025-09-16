module RS_latch (
    input  wire s, r,
    output reg  q, q_bar
);
  //remember it is prefered to consider RS-latch not SR-latch when NAND gates are used**
    always @(*) begin
        case ({s,r})
            2'b00: begin q = 1; q_bar = 1; end
            2'b01: begin q = 1; q_bar = 0; end
            2'b10: begin q = 0; q_bar = 1; end
            2'b11: begin q = 1'bx; q_bar = 1'bx; end
        endcase
    end
endmodule
