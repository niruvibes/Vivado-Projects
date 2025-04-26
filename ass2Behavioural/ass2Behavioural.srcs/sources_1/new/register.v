`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.04.2025 16:03:48
// Design Name: 
// Module Name: register
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



module d_latch(
    input data,
    input enable,
    output Q_out
);
    wire S, R;
    wire Q_not;
    wire data_not;

    nand (data_not, data, data);

    nand (S, data, enable);
    nand (R, data_not, enable);

    nand (Q_out, S, Q_not);
    nand (Q_not, R, Q_out);

endmodule

