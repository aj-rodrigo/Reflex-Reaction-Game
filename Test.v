`timescale 1ns / 1ps


module Test(led, sw, keepFinal);

input [15:0] led, sw;
output keepFinal;

reg keepTrack = 0;

always @* begin
    if(sw[0] & led[0])
        keepTrack <= 1;
    else if(sw[1] & led[1])
        keepTrack <= 1;
    else if(sw[2] & led[2])
        keepTrack <= 1;
    else if(sw[3] & led[3])
        keepTrack <= 1;
    else if(sw[4] & led[4])
        keepTrack <= 1;
    else if(sw[5] & led[5])
        keepTrack <= 1;
    else if(sw[6] & led[6])
        keepTrack <= 1;
    else if(sw[7] & led[7])
        keepTrack <= 1;
    else if(sw[8] & led[8])
        keepTrack <= 1;
    else if(sw[9] & led[9])
        keepTrack <= 1;
    else if(sw[10] & led[10])
        keepTrack <= 1;
    else if(sw[11] & led[11])
        keepTrack <= 1;
    else if(sw[12] & led[12])
        keepTrack <= 1;
    else if(sw[13] & led[13])
        keepTrack <= 1;
    else if(sw[14] & led[14])
        keepTrack <= 1;
    else if(sw[15] & led[15])
        keepTrack <= 1;
    else if(sw[16] & led[16])
        keepTrack <= 1;
    else if(sw[17] & led[17])
        keepTrack <= 1;
    else if(sw[18] & led[18])
        keepTrack <= 1;
    else if(sw[19] & led[19])
        keepTrack <= 1;
    else if(sw[20] & led[20])
        keepTrack <= 1;
    else if(sw[21] & led[21])
        keepTrack <= 1;
    else if(sw[22] & led[22])
        keepTrack <= 1;
    else if(sw[23] & led[23])
        keepTrack <= 1;
    else if(sw[24] & led[24])
        keepTrack <= 1;
    else if(sw[25] & led[25])
        keepTrack <= 1;
    else if(sw[26] & led[26])
        keepTrack <= 1;
    else if(sw[27] & led[27])
        keepTrack <= 1;
    else if(sw[28] & led[28])
        keepTrack <= 1;
    else if(sw[29] & led[29])
        keepTrack <= 1;
    else if(sw[30] & led[30])
        keepTrack <= 1;
    else
        keepTrack <= 0;
end

assign keepFinal = keepTrack;

endmodule
