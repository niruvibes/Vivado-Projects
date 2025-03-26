`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2025 12:06:37
// Design Name: 
// Module Name: mux8to1
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


module mux8to1(
    input [7:0] IN,
    input [2:0] SEL,
    output reg O
    );
    
always@(SEL, IN) begin
    case (SEL)
        3'b000: O = IN[0];
        3'b001: O = IN[1];
        3'b010: O = IN[2];
        3'b011: O = IN[3];
        3'b100: O = IN[4];
        3'b101: O = IN[5];
        3'b110: O = IN[6];
        3'b111: O = IN[7];
    endcase
end
endmodule
