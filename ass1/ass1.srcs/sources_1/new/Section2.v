`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2025 18:08:56
// Design Name: 
// Module Name: Section2
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


module Section2(
    input [3:0] OUTS,
    input [3:0] REF,
    output CORR1
    );

wire [3:0] complimented;
wire outs_parity, ref_parity, xor_parity;

twos_compliment tc(REF, complimented);

xor parity_out(outs_parity, OUTS[0], OUTS[1], OUTS[2], OUTS[3]);

xor parity_ref(ref_parity, complimented[0], complimented[1], complimented[2], complimented[3]);

xor same(xor_parity, outs_parity, ref_parity);

not not_xor(CORR1, xor_parity);

endmodule
