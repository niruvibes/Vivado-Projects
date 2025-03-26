`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2025 16:44:08
// Design Name: 
// Module Name: Climatecircuit
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

`timescale 1ns / 1ps

module Climatecircuit(
        input K,
        input L,
        input B,
        input D,
        output H, 
        output C 
    );

        assign H = (~K & ~L & ~B) | (~K & ~L & ~D) | (~K & ~B & ~D) + (~L & ~B & ~D);
        assign C = (L & B & D) | (K & B & D) | (K & L & D) | (K & L & B);

endmodule
