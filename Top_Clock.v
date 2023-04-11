`timescale 1ns / 1ps

module Top_Clock(clk, rst, led, sw, timerOut, scoreOut);

input clk, rst;
input [15:0] led, sw;
output [5:0] timerOut, scoreOut;

wire hertz, hertz2, rst_B, keepFinal;
wire [5:0] timerW;

Debouncer DB (.clk(clk), .inp(rst), .outp(rst_B));
Hertz HU (.clk(clk), .clk_2(hertz));
Hertz2 HU2 (.clk(clk), .clk_2(hertz2));
Timer TM (.clk_2(hertz), .rst(rst_B), .timerOut(timerW));
Score SC (.clk_2(hertz2), .rst(rst_B), .keepFinale(keepFinal), .led(led), .sw(sw), .timerIn(timerW), .scoreOut(scoreOut));
Test TX (.led(led), .sw(sw), .keepFinal(keepFinal));

assign timerOut = timerW;

endmodule
