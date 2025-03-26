`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2025 12:06:08
// Design Name: 
// Module Name: Gradecircuit2
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


module Gradecircuit2(
    input   A, M, F, L,
    output  P
    );

    mux8to1 m1({1'b0, L, 1'b0, 1'b1, 1'b0, 1'b1, L, 1'b1}, {A, M, F}, P);
endmodule
