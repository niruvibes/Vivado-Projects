`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.04.2025 14:15:08
// Design Name: 
// Module Name: FSM
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


module FSM(
    input START, // reset
    input TIME,
    input [1:0] COMP,
    input [3:0] OUTS,
    input [3:0] CODE,
    output reg OVER,
    output reg [2:0] curr_state, next_state,
    output reg [1:0] comp_saved,
    output reg [3:0] outs_saved,
    output reg [3:0] code_saved
);

// signal declaration
// reg [2:0] curr_state, next_state;
// reg [1:0] comp_saved;
// reg [3:0] outs_saved;
// reg [3:0] code_saved;

// state register
always@(posedge TIME, posedge START) begin
    if (START) begin
        curr_state <= 3'b001;
    end else begin
        case (curr_state)
            3'b001: comp_saved <= COMP;
            3'b010: outs_saved <= OUTS;
            3'b011: code_saved <= CODE;
        endcase

        curr_state <= next_state;
    end
end

// next state logic
always@* begin
    case (curr_state)
        3'b000: begin // reading
            next_state = 3'b010;
        end
        3'b001: begin // chal1
            next_state = 3'b011;
        end
        3'b010: begin // chal2
            next_state = 3'b100;
        end
        3'b011: begin //chal3
            next_state = 3'b101;
        end
        3'b100: begin // chal3
            if (comp_saved == 2'b00 && outs_saved == 4'b0000 && code_saved == 4'b0000) begin
                next_state = 3'b101; // completed go to output logic
            end else begin
                next_state = 3'b011; // go to chal1
            end
        end
        default: begin
            next_state = 3'b111;
        end
    endcase
end

// output logic
always@(curr_state) begin
    OVER = 1'b0;
    if (curr_state == 3'b110) begin
        if (comp_saved == 2'b00 && outs_saved == 4'b0000 && code_saved == 4'b0000) begin
            OVER = 1'b1;
        end
    end 
end
endmodule
