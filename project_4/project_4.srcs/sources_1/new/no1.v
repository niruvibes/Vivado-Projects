`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.04.2025 23:30:15
// Design Name: 
// Module Name: no1
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


module no1(
    input x0, x1, x2,
    output f0, f1
    );
    
wire top, middle, bottom;

or(top, x0, x1, x2);
nand(middle, x0, x1, x2);
and(bottom, x0, x1, x2);

xor(f0, top, middle);
nor(f1, bottom, middle);
 
endmodule
