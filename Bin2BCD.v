`timescale 1ns / 1ps

module Bin2BCD(in, tens, ones);

input [5:0] in;
output reg [3:0] tens;
output reg [3:0] ones;

always @* begin
    tens <= in / 10;
    ones <= in % 10;
end

endmodule
