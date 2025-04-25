`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.04.2025 17:13:21
// Design Name: 
// Module Name: FSM_tb
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


module FSM_tb();

    reg START = 1'b0; // reset
    reg TIME = 1'b0;
    reg [1:0] COMP = 2'b11;
    reg [3:0] OUTS = 4'b1111;
    reg [3:0] CODE = 4'b1111;
    wire OVER;
    wire [1:0] curr_state;
    wire [1:0] next_state;
    
    FSM UUT(START, TIME, COMP, OUTS, CODE, OVER, curr_state, next_state);
    
    initial begin
        START = 1'b1;
        #10;
        
        START = 1'b0;
        #10;

        TIME = 1'b1;
        #10;
        TIME = 1'b0;
        #10;

        COMP = 2'b00;
        #10;

        TIME = 1'b1;
        #10;
        TIME = 1'b0;
        #10;

        OUTS = 4'b0000;
        #10;

        TIME = 1'b1;
        #10;
        TIME = 1'b0;
        #10;

        CODE = 4'b0000;
        #10;

        TIME = 1'b1;
        #10;
        TIME = 1'b0;
        #10;

        TIME = 1'b1;
        #10;
        TIME = 1'b0;
        #10;

        TIME = 1'b1;
        #10;
        TIME = 1'b0;
        #10;
    end

endmodule
