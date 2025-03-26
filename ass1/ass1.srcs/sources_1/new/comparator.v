`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2025 15:45:02
// Design Name: 
// Module Name: comparator
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


module comparator(
    input A,
    input B,
    output G,
    output L,
    output E
    );

wire a_not, b_not;

not not_a(a_not,A);
not not_b(b_not,B);

xnor a_b_nor(E, A, B);

and not_b_a_and(G, A, b_not);

and not_a_b_and(L, a_not, B);

endmodule
