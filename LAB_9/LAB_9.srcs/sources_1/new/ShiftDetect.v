`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2026 02:28:42 PM
// Design Name: 
// Module Name: ShiftDetect
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


module ShiftDetect(
clk, rst, serial_in, unlock
    );
    input clk, rst, serial_in;
    output unlock;
    
    reg [2:0] shift=3'b000;
    
    always@(posedge clk)
    begin
    shift <={shift[1:0], serial_in};
    if (rst)
    begin
    shift <= 3'b000;
    end
    end
    
    
    assign unlock=(shift==3'b101);
    
endmodule
