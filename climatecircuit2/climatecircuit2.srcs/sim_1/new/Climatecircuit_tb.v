`timescale 1ns / 1ps
module Climatecircuit_tb();
    // Inputs
    reg K;
    reg L;
    reg B;
    reg D;
    
    //Outputs
    wire H;
    wire C;
    
    Climatecircuit UUT(K, L, B, D, H, C);
    
    // Set inputs
    initial begin
        K = 1'b0;
        L = 1'b0;
        B = 1'b0;
        D = 1'b0;
        
        forever begin
            #100;
            {K, L, B, D} = {K, L, B, D} +1;
        end
    end
endmodule
