`timescale 1ns / 1ps

module BCD(clk, rst, hrs_tens, mins_tens, hrs_ones, mins_ones, seg, an);

input clk, rst;
input [3:0] hrs_ones, hrs_tens, mins_ones, mins_tens;
output reg [0:6] seg;
output reg [3:0] an;


parameter null = 7'b1111111;
parameter zero = 7'b0000001;
parameter one = 7'b1001111;
parameter two = 7'b0010010;
parameter three = 7'b0000110;
parameter four = 7'b1001100;
parameter five = 7'b0100100;
parameter six = 7'b0100000;
parameter seven = 7'b0001111;
parameter eight = 7'b0000000;
parameter nine = 7'b0000100;

reg [1:0] sel;
reg [16:0] timer;

always @(posedge clk or posedge rst) begin
    if(rst) begin
        sel <= 0;
        timer <= 0;
    end 
    else
        if(timer == 99999) begin
            timer <= 0;
            sel <= sel + 1;
        end
        else
            timer <= timer + 1;
end

always @(sel) begin
    case(sel)
        2'b00 : an = 4'b0111;
        2'b01 : an = 4'b1011;
        2'b10 : an = 4'b1101;
        2'b11 : an = 4'b1110;
    endcase
end

always @* 
    case(sel)
         2'b00 : begin
             case(hrs_tens)
                 4'b0000 : seg = zero;     
                 4'b0001 : seg = one;      
                 4'b0010 : seg = two;      
                 4'b0011 : seg = three;    
                 4'b0100 : seg = four;     
                 4'b0101 : seg = five;     
                 4'b0110 : seg = six;      
                 4'b0111 : seg = seven;    
                 4'b1000 : seg = eight;    
                 4'b1001 : seg = nine;
             endcase
        end
        
         2'b01 : begin                             
             case(hrs_ones)                    
                 4'b0000 : seg = zero;     
                 4'b0001 : seg = one;      
                 4'b0010 : seg = two;      
                 4'b0011 : seg = three;    
                 4'b0100 : seg = four;     
                 4'b0101 : seg = five;     
                 4'b0110 : seg = six;      
                 4'b0111 : seg = seven;    
                 4'b1000 : seg = eight;    
                 4'b1001 : seg = nine;     
             endcase
         end                       
        
         2'b10 : begin                             
             case(mins_tens)                    
                 4'b0000 : seg = zero;     
                 4'b0001 : seg = one;      
                 4'b0010 : seg = two;      
                 4'b0011 : seg = three;    
                 4'b0100 : seg = four;     
                 4'b0101 : seg = five;     
                 4'b0110 : seg = six;      
                 4'b0111 : seg = seven;    
                 4'b1000 : seg = eight;    
                 4'b1001 : seg = nine;    
             endcase 
         end
         
         2'b11 : begin                 
            case(mins_ones)            
                4'b0000 : seg = zero; 
                4'b0001 : seg = one;  
                4'b0010 : seg = two;  
                4'b0011 : seg = three;
                4'b0100 : seg = four; 
                4'b0101 : seg = five; 
                4'b0110 : seg = six;  
                4'b0111 : seg = seven;
                4'b1000 : seg = eight;
                4'b1001 : seg = nine; 
            endcase                   
        end                           
endcase           



endmodule
