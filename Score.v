`timescale 1ns / 1ps

module Score(clk_2, rst, keepFinale, led, sw, timerIn, scoreOut);

input clk_2, rst, keepFinale;
input [15:0] led, sw;
input [5:0] timerIn;
output [5:0] scoreOut;

reg [5:0] scoreCtr = 0;

always @(posedge clk_2 or posedge rst) begin
    if(rst | (timerIn == 31))
        scoreCtr <= 0;
    else begin
        if(scoreCtr == 63)
            scoreCtr <= 0;
        else begin
            if(keepFinale)
                scoreCtr <= scoreCtr + 1;
            else 
                scoreCtr <= scoreCtr;
        end
    end
end

assign scoreOut = scoreCtr;

endmodule
