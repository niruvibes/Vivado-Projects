`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2025 15:41:10
// Design Name: 
// Module Name: Section3
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


module Section3(
    input [3:0] CODE,
    input [3:0] OUTS,
    output CORR2
    );

wire [3:0] sum;
wire [3:0] carry;

HalfAdder A0(CODE[0], OUTS[0], sum[0], carry[0]);
FullAdder A1(CODE[1], OUTS[1], carry[0], sum[1], carry[1]);
FullAdder A2(CODE[2], OUTS[2], carry[1], sum[2], carry[2]);
//FullAdder A3(CODE[3], OUTS[3], carry[2], sum[3], carry[3]); //can replace with 3 input xor gate but like wtvrs

// xor sumoutput(sum[3], CODE[3], OUTS[3], carry[2]); // 3 input xor gates are just two 2 input gates so replaced

xor sumoutput1(intermediate, CODE[3], OUTS[3]);

xor sumoutput2(sum[3], intermediate, carry[2]);

nor checker(CORR2, sum[0], sum[1], sum[2], sum[3]);

endmodule
