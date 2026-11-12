`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2026 02:44:05 PM
// Design Name: 
// Module Name: ShiftDetectTest
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


module ShiftDetectTest(

    );
    reg clk, rst, sin;
    wire solve;
    
    ShiftDetect test(
.clk(clk),
.rst(rst),
.serial_in(sin),
.unlock(solve)
);

    initial begin
    clk=0;sin=0;#10;
    clk=1;
    rst = 1;#10;clk=0;
    clk=0;#10;
    rst = 0; 
    sin = 1; clk=0; #10;
    clk=1;#10;
    sin = 0; clk=0; #10;
    clk=1;#10;
    sin = 1; clk=0; #10;
    clk=1;#10;
    sin = 0; clk=0; #10;
    clk=1;#10;
    sin = 1; clk=0; #10;
    clk=1;#10;
    sin = 0; clk=0; #10;
    clk=1;#10;
    sin = 1; clk=0; #10;
    clk=1;#10;
    $stop;
    end
endmodule
