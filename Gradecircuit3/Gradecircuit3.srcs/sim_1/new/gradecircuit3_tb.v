`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2025 13:57:12
// Design Name: 
// Module Name: gradecircuit3_tb
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


module gradecircuit3_tb();
    // Inputs
    reg L;
    reg F;
    reg M;
    reg A;

    //Outputs
    wire P;

    Gradecircuit3 UUT(A, M, F, L, P);             // why is it uut
    
    // Set inputs
    initial begin
        A = 1'b0;
        M = 1'b0;
        F = 1'b0;
        L = 1'b0;
        
        forever begin
            #100;
            {A, M, F, L} = {A, M, F, L} +1;
        end
    end
endmodule
