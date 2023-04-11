`timescale 1ns / 1ps

module Random(input clk, output [4:0] num);

reg [4:0] mynumber;

always @(posedge clk) begin
mynumber = {$urandom_range(30)};
end

assign num = mynumber;

endmodule
