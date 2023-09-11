
module TOP_DAWG(
    input CCLK,
    input RESET, ENGAGE,
    output [16:3] LED,
    output screen

    );

    //initing the submodules to generate a bitfile
    wire cl;
    Clk mod1(.CCLK(CCLK), .clkscale(50000000), .clk(cl));
    lfsr_10bit mod2(.clk(cl), .sh_en(ENGAGE), .rst_en(RESET), .Q_out(LED), .max_tick_reg(screen));
    
    
endmodule
