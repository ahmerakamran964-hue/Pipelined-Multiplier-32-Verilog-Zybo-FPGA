module tb_p_m32;
reg clk;
reg reset;
reg enable;
reg [31:0] a;
reg [31:0] b;
wire [63:0] product;
p_m32 uut (
.clk(clk),
.reset(reset),
.enable(enable),
.a(a),
.b(b),
.product(product)
);
always #5 clk = ~clk;
initial begin
clk = 0;
reset = 1;
enable = 0;
a = 0;
b = 0;
#10;
reset = 0; enable = 1;
a = 32'd10; b = 32'd5; #10;
a = 32'd20; b = 32'd4; #10;
a = 32'd15; b = 32'd8; #20;
$finish;
end
endmodule