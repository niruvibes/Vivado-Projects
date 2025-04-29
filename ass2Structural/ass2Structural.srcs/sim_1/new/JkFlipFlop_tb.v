`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.04.2025 23:11:14
// Design Name: 
// Module Name: JkFlipFlop_tb
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


module JkFlipFlop_tb();

reg j, k;
reg clk, reset;
wire q, q_not;

JkFlipFlop UUT(j, k, clk, reset, q, q_not);

initial begin
    j = 0; k = 0;
    reset = 1'b1;
    clk = 1'b0;
    #10;
    reset = 1'b0;
    forever begin
        assign clk = ~clk;
        #10;
    end
end

initial begin
    #10
    j = 1; k = 0; #100;
    j = 0; k = 1; #100;
    j = 0; k = 0; #100;
    j = 1; k = 1; #100;
    j = 0; k = 0; #100;
end
endmodule
