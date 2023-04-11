`timescale 1ns / 1ps 

module Hertz(clk, clk_2);
  
input clk; 
output clk_2;
  
reg [25:0] ctr = 0; 
reg clk_out = 0;
  
always @(posedge clk) begin 
  if(ctr == 49999999) begin
    ctr <= 0;
    clk_out <= ~clk_out; 
  end
  
  else
    ctr <= ctr + 1;
  end
  
assign clk_2 = clk_out;

endmodule
