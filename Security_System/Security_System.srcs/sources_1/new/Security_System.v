`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2025 15:06:47
// Design Name: 
// Module Name: Security_System
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


module Security_System(
    input clk,
    input btnC,
    output reg LED
    );
//0.000001
wire [31:0] max = 100000000;
wire match;

timer timer(clk,btnC,max,match);

always@(posedge match) begin
    LED = ~LED;
end



endmodule
