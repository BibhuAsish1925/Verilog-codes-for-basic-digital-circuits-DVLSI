module mod14_counter_struct(
    input clk, rst_n,
    output [3:0] q
);
    wire [3:0] q_int;
    wire reset_n_int;

    wire t0 = 1'b1;
    wire t1 = q_int[0];
    wire t2 = q_int[1] & q_int[0];
    wire t3 = q_int[2] & q_int[1] & q_int[0];

    nand4 n1(.a(q_int[3]), .b(q_int[2]), .c(q_int[1]), .d(~q_int[0]), .y(reset_n_int));
    wire rst_final = rst_n & reset_n_int;

    t_ff ff0(.clk(clk), .rst_n(rst_final), .t(t0), .q(q_int[0]));
    t_ff ff1(.clk(clk), .rst_n(rst_final), .t(t1), .q(q_int[1]));
    t_ff ff2(.clk(clk), .rst_n(rst_final), .t(t2), .q(q_int[2]));
    t_ff ff3(.clk(clk), .rst_n(rst_final), .t(t3), .q(q_int[3]));

    assign q = q_int;
endmodule


module t_ff(
    input clk, rst_n, t,
    output reg q
);
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            q <= 1'b0;
        else if (t)
            q <= ~q;
    end
endmodule

module nand4(
    input a, b, c, d,
    output y
);
    assign y = ~(a & b & c & d);
endmodule