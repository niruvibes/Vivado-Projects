`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2025 22:15:22
// Design Name: 
// Module Name: twos_compliment
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


module twos_compliment(
    input [3:0] val,
    output [3:0] out
    );

wire A = val[3];
wire B = val[2];
wire C = val[1];
wire D = val[0];

not not_a(a_not,A);
not not_b(b_not,B);
not not_c(c_not,C);
not not_d(d_not,D);

and a_not_b_not_c_not_d_and(a_not_b_not_c_not_d, A, b_not, c_not, d_not);
and not_a_d_and(not_a_d, a_not, D);
and not_a_c_and(not_a_c, a_not, C);
and not_a_b_and(not_a_b, a_not, B);
or O1(out[3], a_not_b_not_c_not_d, not_a_d, not_a_c, not_a_b);

and b_not_c_not_d_and(b_not_c_not_d, B, c_not, d_not);
and not_b_d_and(not_b_d, b_not, D);
and not_b_c_and(not_b_c, b_not, C);
or O2(out[2], b_not_c_not_d, not_b_d, not_b_c);

and not_a_not_b_c_not_d_and(not_a_not_b_c_not_d, a_not, b_not, C, d_not);
and not_c_d_and(not_c_d, c_not, D);
and a_d_and(a_d, A, D);
and b_d_and(b_d, B, D);
or  O3(out[1], not_a_not_b_c_not_d, not_c_d, a_d, b_d);

buf buffer(out[0], D);

endmodule
