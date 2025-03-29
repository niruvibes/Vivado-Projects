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

// A = val[3]
// B = val[2]
// C = val[1]
// D = val[0]

wire a_not, b_not, c_not, d_not; // not gates
wire a_not_b_not_c_not_d, not_a_d, not_a_c, not_a_b; // MSB
wire not_b_d, not_b_c, b_not_c_not_d; // bit 2
wire c_not_d, not_c_d; //bit 1


not not_a(a_not,val[3]); 
not not_b(b_not,val[2]);
not not_c(c_not,val[1]);
not not_d(d_not,val[0]);


and a_not_b_not_c_not_d_and(a_not_b_not_c_not_d, val[3], b_not, c_not, d_not);
and not_a_d_and(not_a_d, a_not, val[0]);
and not_a_c_and(not_a_c, a_not, val[1]);
and not_a_b_and(not_a_b, a_not, val[2]);
or O1(out[3], a_not_b_not_c_not_d, not_a_d, not_a_c, not_a_b);


and not_b_d_and(not_b_d, b_not, val[0]);
and not_b_c_and(not_b_c, b_not, val[1]);
and b_not_c_not_d_and(b_not_c_not_d, val[2], c_not, d_not);
or O2(out[2], not_b_d, not_b_c, b_not_c_not_d);

and not_c_d_and(not_c_d, c_not, val[0]);
and c_not_d_and(c_not_d, val[1], d_not);
or O3(out[1], not_c_d, c_not_d);

buf buffer(out[0], val[0]);

endmodule
