`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2025 15:18:28
// Design Name: 
// Module Name: FullAdder_tb
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


module FullAdder_tb();
    reg A, B, carryin;
    wire sum, carryout;

    FullAdder UUT(A,B, carryin, sum, carryout);

    initial begin
        A = 1'b0;
        B = 1'b0;
        carryin = 1'b0;
        
        forever begin
            #100;
            {A, B, carryin} = {A, B, carryin} + 1; 
        end
    end

endmodule
