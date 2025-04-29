`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.04.2025 23:37:04
// Design Name: 
// Module Name: no_2
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


module no_2(
    input clk,
    input reset,
    output reg [15:0] out
    );

shift_reg shifter(clk, reset, 1'b0, out);
endmodule
