`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2026 03:49:14 PM
// Design Name: 
// Module Name: FSMDetectorTop
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FSMDetectorTop(
input [2:0]sw, 
output led
    );
    //wire out;
    //assign btnC = ~out;
    FSMDetector DUT(
    .clk(sw[2]),
    .rst(sw[1]),
    .din(sw[0]),
    .unlock(led)
    );
endmodule
