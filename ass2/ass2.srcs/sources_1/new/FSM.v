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
    output reg [1:0] curr_state, next_state
);

//signal declaration
reg in;

// state register
always@(posedge TIME, posedge START) begin
    if (START) begin
        curr_state <= 2'b00;
    end else begin
        curr_state <= next_state;
    end
end

// next state logic
always@* begin
    case (curr_state)
        2'b00: begin // reading
            next_state = 2'b01;
        end
        2'b01: begin // chal1
            next_state = 2'b10;
        end
        2'b10: begin // chal2
            next_state = 2'b11;
        end
        2'b11: begin //chal3
            if (in) begin
                next_state = 2'b11; // completed go to output logic
            end else begin
                next_state = 2'b01; // go to chal1
            end
        end
    endcase
end

// output logic
always@* begin
    OVER = 1'b0;
    assign in = ~(COMP | OUTS | CODE);
    if (curr_state == 2'b11) begin
        if (in) begin
            OVER = 1'b1;
        end
    end 
end
endmodule
