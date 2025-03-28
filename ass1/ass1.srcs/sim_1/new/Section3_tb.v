`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2025 16:01:43
// Design Name: 
// Module Name: Section3_tb
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


module Section3_tb();
    // Inputs (wire for inputs)
    reg [3:0] CODE;
    reg [3:0] OUTS;
    
    // Outputs (wire for outputs)
    wire CORR2;

    Section3 UUT(CODE, OUTS, CORR2);
    
    initial begin
        CODE = 4'b0000; OUTS = 4'b0000; #100; // SUM = 0000 (all 0s)
        CODE = 4'b1111; OUTS = 4'b0000; #100; // SUM = 1111 (all 1s)
        CODE = 4'b0000; OUTS = 4'b1111; #100; // SUM = 1111 (all 1s)
        CODE = 4'b0101; OUTS = 4'b1010; #100; // SUM = 1111 (all 1s)
        CODE = 4'b0011; OUTS = 4'b1100; #100; // SUM = 1111 (all 1s)
        CODE = 4'b0110; OUTS = 4'b1001; #100; // SUM = 1111 (all 1s)
        CODE = 4'b0010; OUTS = 4'b0100; #100; // SUM = 0110 (mix of 0s and 1s)
        CODE = 4'b1011; OUTS = 4'b0101; #100; // SUM = 0000 (all 0s, ignoring carry)
        CODE = 4'b0111; OUTS = 4'b0110; #100; // SUM = 1101 (mix of 0s and 1s)
        CODE = 4'b1000; OUTS = 4'b0111; #100; // SUM = 1111 (all 1s)
    end


endmodule
