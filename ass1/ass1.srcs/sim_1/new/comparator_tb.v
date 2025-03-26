`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2025 16:00:03
// Design Name: 
// Module Name: 1bit_tb
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


module comparator_tb();
// Inputs
    reg A;
    reg B;
    
    //Outputs
    wire G;
    wire L;
    wire E;
    
    comparator UUT(A,B, G, L, E);
    
    // Set inputs
    initial begin
        A = 1'b0;
        B = 1'b0;
        
        forever begin
            #100;
            {A, B} = {A, B} +1;
        end
    end

endmodule
