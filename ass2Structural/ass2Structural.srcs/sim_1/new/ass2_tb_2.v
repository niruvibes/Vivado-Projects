`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.04.2025 22:11:23
// Design Name: 
// Module Name: ass2_tb_2
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


module ass2_tb_2();
// this is stolen from avnzx and will not be used in my report, DO NOT USE THIS
// Inputs
reg START;
reg TIME;
reg [1:0] COMP;
reg [3:0] OUTS;
reg [3:0] CODE;
wire OVER;
    
ass2_structural UUT(START, TIME, COMP, OUTS, CODE, OVER);

initial begin
    TIME = 0;
    {START, COMP, OUTS, CODE} = 11'b10100010001;
    
    #50
    START = 0;
    
    #170
    START = 1;
    
    #30
    {START, COMP, OUTS, CODE} = 0;
end

always #20 TIME = ~TIME;

endmodule
