module Section2_tb();
    // Inputs (wire for inputs)
    reg [3:0] OUTS;
    reg [3:0] REF;
    
    // Outputs (wire for outputs)
    wire CORR1;
     wire [3:0] COMPLIMENT;

    Section2 UUT(OUTS, REF, CORR1, COMPLIMENT);
    
    // initial begin
    //     OUTS = 4'b1010;
    //     REF = 4'b1010;
    //     #100;
        
    //     OUTS = 4'b1011;
    //     REF = 4'b1010;
    //     #100;
        
    //     OUTS = 4'b1001;
    //     REF = 4'b1010;
    //     #100;
        
    //     OUTS = 4'b1111;
    //     REF = 4'b0000;
    //     #100;
        
    //     OUTS = 4'b0000;
    //     REF = 4'b1111;
    //     #100;
        
    // end

    initial begin
        OUTS = 4'b0000;
        REF = 4'b0000;
        
        forever begin
            #100;
//            {OUTS} = {OUTS} +1;
             {REF} = {REF} +1;
        end
    end


endmodule