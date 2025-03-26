module Section1_tb();
    // Inputs (wire for inputs)
    reg [3:0] MEAS;
    reg [3:0] REF;
    
    // Outputs (wire for outputs)
    wire [1:0] COMP;

    Section1 UUT(MEAS, REF, COMP);
    
    initial begin
        MEAS = 4'b1010;
        REF = 4'b1010;
        #100;
        
        MEAS = 4'b1011;
        REF = 4'b1010;
        #100;
        
        MEAS = 4'b1001;
        REF = 4'b1010;
        #100;
        
        MEAS = 4'b1111;
        REF = 4'b0000;
        #100;
        
        MEAS = 4'b0000;
        REF = 4'b1111;
        #100;
        
    end
endmodule