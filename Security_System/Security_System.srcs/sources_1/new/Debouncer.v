`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2025 16:51:48
// Design Name: 
// Module Name: Debouncer
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


module debouncer( 
input reset, 
input clk, 
input noisy, 
output debounced 
); 
// Signal declaration ---------------- 
reg [64:0] state, next_state; 
// State register 
always@(posedge clk, posedge reset) begin 
    if (reset == 1) begin 
        state <= 0; 
    end else begin 
        state <= next_state; 
    end  
end  
// Next State Logic 
always@* begin 
    if (reset == 1) begin 
        next_state = 0; 
    end else begin 
        next_state = (state << 1) + noisy; 
    end 
end  
// Output 
assign debounced = &state; 
endmodule 
