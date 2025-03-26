`timescale 1ns / 1ps
module Climatecircuit_tb();
    // Inputs
    reg K;
    reg L;
    reg B;
    
    //Outputs
    wire H;
    wire C;
    
    Climatecircuit UUT(K, L, B, H, C);
    initial begin
        K = 1'b0;
        L = 1'b0;
        B = 1'b0;
        
        forever begin
            #100;
            {K, B, L} = {K, B, L} +1;
        end
    
    end
    
endmodule
