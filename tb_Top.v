`timescale 1ns / 1ps

module tb_Top();

reg clk, rst;
reg [15:0] sw;
wire [0:6] seg;
wire [3:0] an;
wire [15:0] led;

Top T00 (.clk(clk), .rst(rst), .sw(sw), .seg(seg), .an(an), .led(led));

initial clk = 0;
initial rst = 0;
always #5 clk = ~clk;


endmodule
