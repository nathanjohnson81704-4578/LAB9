`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2026 03:30:43 PM
// Design Name: 
// Module Name: FSMDetectorTest
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


module FSMDetectorTest(

    );
    reg clk, rst, din;
    wire solve;
    
    FSMDetector test(
.clk(clk),
.rst(rst),
.din(din),
.unlock(solve)
);

    initial begin
    clk=0;din=0;#10;
    clk=1;
    rst = 1;#10;clk=0;
    clk=0;#10;
    rst = 0; 
    din = 1; clk=0; #5;
    clk=1;#5;
    din = 0; clk=0; #5;
    clk=1;#5;
    din = 1; clk=0; #5;
    clk=1;#5;
    din = 0; clk=0; #5;
    clk=1;#5;
    din = 1; clk=0; #5;
    clk=1;#5;
    din = 0; clk=0; #5;
    clk=1;#5;
    din = 1; clk=0; #5;
    clk=1;#5;
    $stop;
    end
endmodule
