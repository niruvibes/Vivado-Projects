`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2025 15:06:47
// Design Name: 
// Module Name: timer
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


module timer(
    input clk, reset,
    input [31:0] max,
    output reg match
    );
// Signal Decleration
reg [31:0] state, state_next;

// State Register
always@(posedge clk, posedge reset) begin
    if (reset) begin
        state <= 32'b0;
    end else begin
        state <= state_next;
    end
end

// Next State Logic
always@* begin
    if (state == max) begin
        state_next = 32'b0;
    end else begin
        state_next = state + 1;
    end
end

// Output Logic
always@* begin
    match = 1'b0;
    if (state == max) begin
        match = 1'b1;
    end 
end

endmodule
