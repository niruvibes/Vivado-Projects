`timescale 1ns / 1ps

module Climatecircuit(
    input K,
    input L,
    input B,
    output H, 
    output C 
);

    assign H = (~K & ~L) | (~K & ~B) | (~L & ~B);
    assign C = (K & L) | (K & B) | (L & B);

endmodule
