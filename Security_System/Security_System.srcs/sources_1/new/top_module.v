`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2025 16:57:04
// Design Name: 
// Module Name: top_module
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


module top_module(
    input btnU,btnL,btnR,btnD,btnC,
    input switch,
    input clk,
    output reg LED1, LED2
    );

//signal declaration
reg [2:0] curr_state, next_state;
wire [31:0] max = 200000000;
wire clock2;

timer t1(clk,switch,max,clock2);

// register
always@(posedge clock2) begin
    if (switch) begin
        curr_state <= 3'b000;
    end else begin
        curr_state <= next_state;
    end
end

// next state logic
always@* begin
    case (curr_state)
        3'b000: begin
            if (btnU) begin
                next_state = 3'b001;
            end else begin
                next_state = 3'b000;
            end
        end
        3'b001: begin
            if (btnL) begin
                next_state = 3'b010;
            end else begin
                next_state = 3'b000;
            end
        end
        3'b010: begin
            if (btnR) begin
                next_state = 3'b011;
            end else begin
                next_state = 3'b000;
            end
        end
        3'b011: begin
            if (btnD) begin
                next_state = 3'b100;
            end else begin
                next_state = 3'b000;
            end
        end
        3'b100: begin
            if (btnC) begin
                next_state = 3'b101;
            end else begin
                next_state = 3'b000;
            end
        end
    endcase
end

// output
always@* begin
    LED1 = 1'b0;
    if (curr_state == 3'b101) begin
        LED1 = 1'b1;
    end 
end

always@(posedge clock2) begin 
     LED2 = ~LED2;
end
endmodule
