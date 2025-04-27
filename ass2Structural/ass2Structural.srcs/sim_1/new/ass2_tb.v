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

// Instantiate the Unit Under Test (UUT)
ass2_structural uut (
    .START(START), 
    .TIME(TIME), 
    .COMP(COMP), 
    .OUTS(OUTS), 
    .CODE(CODE), 
    .OVER(OVER)
);

initial begin
    // Initialize Inputs
    START = 0;
    TIME = 0;
    COMP = 2'b11;
    OUTS = 4'b1111;
    CODE = 4'b1111;
    
    // Start the FSM
    START = 1;
    #10;
    START = 0;
    #10;
    
    // Basic operation test
    TIME = 1;
    COMP = 2'b00;
    OUTS = 4'b0000;
    CODE = 4'b0000;
    #10;
    
    TIME = 0;
    #10;
    
    // Test with different COMP, OUTS and CODE values
    TIME = 1;
    COMP = 2'b01;
    OUTS = 4'b0011;
    CODE = 4'b0101;
    #10;
    
    TIME = 0;
    #10;
    
    TIME = 1;
    COMP = 2'b11;
    OUTS = 4'b1111;
    CODE = 4'b1111;
    #10;
    
    // Toggle TIME signal to simulate clocking
    TIME = 0;
    #10;
    
    TIME = 1;
    COMP = 2'b00;
    OUTS = 4'b0000;
    CODE = 4'b0000;
    #100;
    
    START = 1;
    #10;
    START = 0;
    #10;
    
    // Finish simulation
    $finish;
end

initial begin
    // Monitor changes
    $monitor("At time %t: START=%b TIME=%b COMP=%b OUTS=%b CODE=%b OVER=%b", 
             $time, START, TIME, COMP, OUTS, CODE, OVER);
end

endmodule
