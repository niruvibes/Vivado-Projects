module Section1_tb();
    // Inputs (wire for inputs)
    reg [3:0] MEAS;
    reg [3:0] REF;
    
    // Outputs (wire for outputs)
    wire [1:0] COMP;

    // Instantiate the Unit Under Test (UUT)
    Section1 UUT(MEAS, REF, COMP);
    
    // Stimulus process
    initial begin
         // Test case 1: MEAS = REF (Equal)
        MEAS = 4'b1010;
        REF = 4'b1010;
        #100;
        
        // Test case 2: MEAS > REF (Greater)
        MEAS = 4'b1011;
        REF = 4'b1010;
        #100;
        
        // Test case 3: MEAS < REF (Less)
        MEAS = 4'b1001;
        REF = 4'b1010;
        #100;
        
        // Test case 4: Another greater scenario
        MEAS = 4'b1111;
        REF = 4'b0000;
        #100;
        
        // Test case 5: Another less scenario
        MEAS = 4'b0000;
        REF = 4'b1111;
        #100;
        
    end
endmodule