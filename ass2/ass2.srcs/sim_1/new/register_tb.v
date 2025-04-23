`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.04.2025 16:15:53
// Design Name: 
// Module Name: register_tb
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


module register_tb();

reg data;
reg enable;
wire Q;

d_latch UUT(data, enable, Q);

initial begin
    data = 1'b0;
    enable = 1'b0;

    #50;
    
    enable = 1'b1;
    #50;
    data = 1'b0;
    #50;
    enable = 1'b0;

    #50;

    data = 1'b1;
    #50;

    data = 1'b0;
    #50;

    enable = 1'b1;
    #50;
    data = 1'b1;
    #50;
    enable = 1'b0;

    data = 1'b0;
    #50;

    enable = 1'b1;
    #50;
    data = 1'b1;
    #50;
    data = 1'b0;
    #50;
    enable = 1'b0;
    
    #50; 

    data = 1'b0;
    #50;

    enable = 1'b1;
    #50;
    enable = 1'b0;
end
endmodule
