`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.04.2025 21:49:27
// Design Name: 
// Module Name: ass2_structural
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


module ass2_structural(
    input START, TIME,
    input [1:0] COMP,
    input [3:0] OUTS,
    input [3:0] CODE,
    output wire OVER
);

wire q1, q1_not;
wire q0, q0_not;
wire j1, k1;
wire j0, k0;
wire In, In_not;
wire ff1_out, ff1_out_not;
wire ff0_out, ff0_out_not;

not(q1_not, q1);
not(q0_not, q0);

or(In_not, COMP[1], COMP[0], OUTS[3], OUTS[2], OUTS[1], OUTS[0], CODE[3], CODE[2], CODE[1], CODE[0]);
not (In, In_not);

buf(j1,q0);
and(k1, q0, In_not);

buf(j0, 1'b1);
buf(k0, q1_not);

JkFlipFlop J1(j1,k1,TIME,START,q1, q1_not);
JkFlipFlop J0(j0,k0,TIME,START,q0, q0_not);

and(OVER, q1, q0, In);

endmodule
