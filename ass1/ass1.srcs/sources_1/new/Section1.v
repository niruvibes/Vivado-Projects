`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2025 16:11:02
// Design Name: 
// Module Name: Section1
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


module Section1(
    input [3:0] MEAS,
    input [3:0] REF,
    output [1:0] COMP
    );

// likely lower gate input delay compared to 4 bit comparator

wire g3, l3, e3;
comparator c3(MEAS[3], REF[3], g3, l3, e3);

wire g2, l2, e2;
comparator c2(MEAS[2], REF[2], g2, l2, e2);

wire g1, l1, e1;
comparator c1(MEAS[1], REF[1], g1, l1, e1);

wire g0, l0, e0;
comparator c0(MEAS[0], REF[0], g0, l0, e0);

and e3_l2_and(e3_l2, e3, l2);
and e3_e2_l1_and(e3_e2_l1, e3, e2, l1);
and e3_e2_e1_l0_and(e3_e2_e1_l0, e3, e2, e1, l0);
or  L(COMP[0],e3_e2_e1_l0, e3_e2_l1, e3_l2, l3);


and e3_g2_and(e3_g2, e3, g2);
and e3_e2_g1_and(e3_e2_g1, e3, e2, g1);
and e3_e2_e1_g0_and(e3_e2_e1_g0, e3, e2, e1, g0);
or G(COMP[1], e3_e2_e1_g0, e3_e2_g1, e3_g2, g3);

endmodule
