`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2026 03:17:10 PM
// Design Name: 
// Module Name: FSMDetector
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


module FSMDetector(
input logic clk, rst, din,
output logic unlock
    );
    
    localparam ST0=2'b00,
    ST1=2'b01,
    ST2=2'b10,
    ST3=2'b11;
    
    reg[1:0] state, next_state;
    reg next_out = 0;
    
    always@( clk or rst)
    begin
    if(rst)
        state <= ST0;
    else begin
        state <= next_state;
        unlock <= next_out;
    end
end

always @(*) begin
    next_state = state;
    next_out = 1'b0;
    case(state)
        ST0: begin
            if (din)
                next_state = ST1;
            else 
                next_state = ST0;
        end
        ST1: begin
            if (din)
                next_state = ST1;
            else 
                next_state = ST2;
        end
        ST2: begin
            if (din)
            begin
                next_state = ST3;
                next_out = 1;
            end    
            else 
                next_state = ST0;
        end
        ST3: begin
            if (din)
                next_state = ST1;
            else 
                next_state = ST2;
        end
        default 
            next_state = ST0;
    endcase
end

    
endmodule
