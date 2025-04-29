`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.04.2025 23:37:47
// Design Name: 
// Module Name: ass2_tb
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


module ass2_tb();
// Inputs
reg START;
reg TIME;
reg [1:0] COMP;
reg [3:0] OUTS;
reg [3:0] CODE;

// Outputs
wire OVER;

ass2_structural UUT(START, TIME, COMP, OUTS, CODE, OVER);

initial begin
    forever begin
        #20
        assign TIME = ~TIME;
    end 
end

initial begin
    {START, TIME, COMP, OUTS, CODE} = 12'b100000000001;
    #50;
    START = 1'b0;
    #170;
    START = 1'b1;
    #80
    START = 1'b0;
    {COMP, OUTS, CODE} = 10'b0000000000;
    
    // Finish simulation
    $finish;
end

initial begin
    // Monitor changes
    $monitor("At time %t: START=%b TIME=%b COMP=%b OUTS=%b CODE=%b OVER=%b", 
             $time, START, TIME, COMP, OUTS, CODE, OVER);
end

endmodule
