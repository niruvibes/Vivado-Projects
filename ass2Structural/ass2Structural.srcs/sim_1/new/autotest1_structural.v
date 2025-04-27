`timescale 1ns / 1ps

module autotest1_structural();

    reg START, TIME;
    reg [1:0] COMP;
    reg [3:0] OUTS, CODE;
    wire OVER;

    ass2_structural uut(
        .START(START), 
        .TIME(TIME), 
        .COMP(COMP), 
        .OUTS(OUTS), 
        .CODE(CODE), 
        .OVER(OVER)
    );

    initial begin
        $monitor("sim_time: %0t, START: %b, TIME: %b, COMP: %b, OUTS: %b, CODE: %b, OVER: %b", $time, START, TIME, COMP, OUTS, CODE, OVER);

        TIME = 0;
        START = 1;
        COMP = 1;
        OUTS = 1;
        CODE = 1;

        #50
        START = 0;

        #90
        COMP = 0;
        CODE = 0;
        OUTS = 0;
        
        #80;
        // these mfs dont include this so it goes until ut simulate time is over >:(
        $finish;

    end

    always #20 TIME = ~TIME;

endmodule
