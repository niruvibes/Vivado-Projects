`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.03.2025 15:52:08
// Design Name: 
// Module Name: Gradecircuit1
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


module Gradecircuit1(
    input   A, M, F, L,
    output  P
    );
    
    assign  P = (F & (A|M|L)) | (A&M&L);
    
endmodule
