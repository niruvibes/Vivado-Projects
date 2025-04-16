`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2025 17:27:19
// Design Name: 
// Module Name: comparator_noE
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

module comparator_noE(
    input A,
    input B,
    output G,
    output L
    );

wire a_not, b_not;

not not_a(a_not,A);
not not_b(b_not,B);

and not_a_b(L, a_not, B);

and a_not_b(G, A, b_not);

endmodule
