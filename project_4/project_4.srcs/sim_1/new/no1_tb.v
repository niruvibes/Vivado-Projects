`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.04.2025 23:33:01
// Design Name: 
// Module Name: no1_tb
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


module no1_tb( );

reg x0, x1, x2;
wire f0, f1;

no1 uut(x0,x1,x2,f0,f1);

initial begin
    {x0, x1, x2} = 3'b000;
    
    forever begin
        #20
        {x0, x1, x2} = {x0, x1, x2} + 1;
        
    end
end
endmodule
