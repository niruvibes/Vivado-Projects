`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.03.2025 13:05:41
// Design Name: 
// Module Name: twos_compliment_tb
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


module twos_compliment_tb();
// Inputs (wire for inputs)
    reg [3:0] VAL;
    
    // Outputs (wire for outputs)
    wire [3:0] OUT;

    twos_compliment UUT(VAL, OUT);
    
    // initial begin
    //     OUTS = 4'b1010;
    //     REF = 4'b1010;
    //     #100;
        
    //     OUTS = 4'b1011;
    //     REF = 4'b1010;
    //     #100;
        
    //     OUTS = 4'b1001;
    //     REF = 4'b1010;
    //     #100;
        
    //     OUTS = 4'b1111;
    //     REF = 4'b0000;
    //     #100;
        
    //     OUTS = 4'b0000;
    //     REF = 4'b1111;
    //     #100;
        
    // end

    initial begin
        VAL = 4'b0000;
        
        forever begin
            #100;
            {VAL} = {VAL} +1;
        end
    end
endmodule
