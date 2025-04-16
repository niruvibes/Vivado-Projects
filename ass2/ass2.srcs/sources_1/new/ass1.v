`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2025 16:26:41
// Design Name: 
// Module Name: ass1
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


module ass1(
    input 	wire [3:0] MEAS,
    input 	wire [3:0] REF,
    input 	wire [3:0] OUTS,
    input 	wire [3:0] CODE,
    output 	wire [1:0] COMP,
    output	CORR1, CORR2, OPEN
    );

Section1	stage1(MEAS, REF, COMP);
Section2    stage2(OUTS, REF, CORR1);
Section3    stage3(CODE, OUTS, CORR2);

wire	stage1output;

nor		stage1check(stage1output, COMP[0], COMP[1]);

and 	final(OPEN, stage1output, CORR1, CORR2);

endmodule
