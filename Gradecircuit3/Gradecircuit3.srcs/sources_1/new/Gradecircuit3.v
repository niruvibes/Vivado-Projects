`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2025 12:06:08
// Design Name: 
// Module Name: Gradecircuit3
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


    module Gradecircuit3(
    input   A, M, F, L,
    output  P
    );

    wire            [15:0] D;

    decoder4to16    d1({A,M,F,L}, D);

    assign          P = D[3] | D[6] | D[7] | D[10] | D[11] | D[13] | D[14] | D[15];
endmodule
