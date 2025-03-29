`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2025 23:42:37
// Design Name: 
// Module Name: ass1_tb
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


module autotest01;

//inputs 
reg [3:0] MEAS, REF, OUTS, CODE;

//outputs 
wire [1:0] COMP;
wire CORR1, CORR2, OPEN;

ass1 uut (
MEAS, REF, OUTS, CODE, COMP, CORR1, CORR2, OPEN
);
initial begin
    MEAS = 4'b0;
    REF = 4'b0;
    OUTS = 4'b0;
    CODE = 4'b0;
    
    #100;
    $display("time=%0t COMP=%b CORR1=%b CORR2=%b OPEN=%b: MEAS=%b REF=%b OUTS=%b CODE=%b ", $time, COMP, CORR1, CORR2, OPEN, MEAS, REF, OUTS, CODE);

    REF = 4'b11;
    
    CODE = 4'b1;
    
    #10;
    $display("time=%0t COMP=%b CORR1=%b CORR2=%b OPEN=%b: MEAS=%b REF=%b OUTS=%b CODE=%b ", $time, COMP, CORR1, CORR2, OPEN, MEAS, REF, OUTS, CODE);
    
    #90;
    
    OUTS = 4'b1;
    
    #10;
    $display("time=%0t COMP=%b CORR1=%b CORR2=%b OPEN=%b: MEAS=%b REF=%b OUTS=%b CODE=%b ", $time, COMP, CORR1, CORR2, OPEN, MEAS, REF, OUTS, CODE);
    
    #90;
    
    CODE = 4'b1111;
    
    #10;
    $display("time=%0t COMP=%b CORR1=%b CORR2=%b OPEN=%b: MEAS=%b REF=%b OUTS=%b CODE=%b ", $time, COMP, CORR1, CORR2, OPEN, MEAS, REF, OUTS, CODE);
    
    #90;
    
    MEAS = 4'b11;
    
    #10;
    $display("time=%0t COMP=%b CORR1=%b CORR2=%b OPEN=%b: MEAS=%b REF=%b OUTS=%b CODE=%b ", $time, COMP, CORR1, CORR2, OPEN, MEAS, REF, OUTS, CODE);

    end


endmodule
