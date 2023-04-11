`timescale 1ns / 1ps

module Debouncer(clk, inp, outp);
  
input clk, inp; 
output outp;
  
reg t1, t2, t3;
  
always @(posedge clk) begin 
  t1 <= inp;
  t2 <= t1;
  t3 <= t2; 
end
  
assign outp = t3; 

endmodule
