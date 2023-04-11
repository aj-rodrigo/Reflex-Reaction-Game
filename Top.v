`timescale 1ns / 1ps

module Top(clk, rst, sw, seg, an, led);
  
input clk, rst; input [15:0] sw; output [0:6] seg; output [3:0] an; output [15:0] led;
  
wire [3:0] minsTens, minsOnes, hrsTens, hrsOnes; wire [5:0] timerOut2, scoreOut2;
wire [15:0] ledW;
wire [4:0] numW;
  
Top_Clock T00 (.clk(clk), .rst(rst), .led(ledW), .sw(sw), .timerOut(timerOut2), .scoreOut(scoreOut2));
Bin2BCD Timer00 (.in(timerOut2), .tens(minsTens), .ones(minsOnes));
Bin2BCD Score00 (.in(scoreOut2), .tens(hrsTens), .ones(hrsOnes));
BCD CU1 (.clk(clk), .rst(rst), .hrs_tens(hrsTens), .hrs_ones(hrsOnes), .mins_tens(minsTens), .mins_ones(minsOnes), .seg(seg), .an(an)); Lights LUI (.rst(rst), .scoreIn(scoreOut2), .timerIn(timerOut2), .sw(sw), .led(ledW));
//Random ORI (.clk(clk), .num(numW));
// .scoreIn(scoreOut2), .timerIn(timerOut2),

assign led = ledW; 

endmodule
