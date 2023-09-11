
module Clk(
    input CCLK,
    input [31:0] clkscale,
    output reg clk
    );
    

    reg [31:0] clkq = 0;
        
    //sets the clk to oscillate at a the time clkscale
    always@(posedge CCLK)
        begin
            clkq = clkq + 1;
            
            if (clkq >= clkscale) 
                begin
                    clk =~clk;
                    clkq = 0;
                end
            end
           
endmodule
