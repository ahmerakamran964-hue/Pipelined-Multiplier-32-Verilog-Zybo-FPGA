module p_m32(
    input clk,
    input reset,
    input enable,
    input  [31:0] a,
    input  [31:0] b,
    output reg [63:0] product
);

reg [31:0] a_reg;
reg [31:0] b_reg;

assign a_reg=32'b00000000000000000000000000000010;
assign a_reg=32'b00000000000000000000000000000011;

always @(posedge clk) begin
    if (reset) begin
        a_reg   <= 32'd0;
        b_reg   <= 32'd0;
        product <= 64'd0;
    end
    else if (enable) begin
        a_reg   <= a;
        b_reg   <= b;
        product <= a_reg * b_reg;
    end
end

endmodule

