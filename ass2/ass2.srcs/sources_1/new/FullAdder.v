`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2025 13:56:21
// Design Name: 
// Module Name: FullAdder
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


module FullAdder(
    input A, B,
    input carryin,
    output sum, carryout
    );

wire xor_a_b;
wire a_b, a_b_xor_c, carryout;

xor a_b_xor(xor_a_b, A, B);
xor a_b_carry_xor(sum, xor_a_b, carryin);

and a_b_and(a_b, A, B);
and a_b_xor_carry_and(a_b_xor_c, xor_a_b, carryin);
or  a_b_and_a_b_xor_carry_and_or(carryout, a_b, a_b_xor_c);

endmodule
