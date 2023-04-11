`timescale 1ns / 1ps

module Timer(clk_2, rst, timerOut);
  
input clk_2, rst; 
output [5:0] timerOut;
  
reg [5:0] timerCtr = 30;

always @(posedge clk_2 or posedge rst) begin 
  if(rst)
    timerCtr <= 30; 
  else
    if(timerCtr == 0) 
      timerCtr <= timerCtr;
    else
      timerCtr <= timerCtr - 1;
end

assign timerOut = timerCtr; 

endmodule
