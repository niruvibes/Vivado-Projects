`timescale 1ns / 1ps

// Verilog code for basic SIPO (serial-in, parallel-out) shift register.
// You will need to modify this code to add any extra features such as:
//      * Reset
//      * Enable
//      * Parallel load
//      * Bi-directional shifting
//      * Different register widths
//      * Shift-by-n bits
//      * etc.

module shift_reg(
        input clk,
        input reset,
        input d_in, // serial data in
        output [15:0] d_out // 8-bit parallel data out. Change if different data widths are required.
);

    reg [15:0] d, d_next;

    always @(posedge clk, posedge reset) begin
        if (reset) d <= 16'd1;
        else d <= d_next;
    end

    always @* begin
        if (d_out[15] == 1) d_next = d;
        else d_next = {d[14:0], d_in};  // shift left and input new bit into LSB
    end

    assign d_out = d;

endmodule