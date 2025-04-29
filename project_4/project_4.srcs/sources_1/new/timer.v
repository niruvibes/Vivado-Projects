`timescale 1ns / 1ps

// Verilog code for timer.
// Pulses output <match> HIGH for one clock cycle every <duration> cycles.

module timer(
    input clk,
    input reset,
    input [31:0] duration,
    output reg match
);

    reg [31:0] count;

    always @(posedge clk) begin
        if (reset) begin
            count <= 0;
            match <= 0;
        end else begin
            if (count == duration - 1) begin
                count <= 0;
                match <= 1;
            end else begin
                count <= count + 1;
                match <= 0;
            end
        end
    end

endmodule