
module TOP_DAWG(
    input wire CCLK,
    input wire RESET, ENGAGE,
    output wire [15:0] LED,
    output wire [6:0] seven_seg,
    output [3:0] anode_sel

    );
    reg [14:0] count = 15'b0;
    wire [14:0] countwire;
    wire s1, s2, s3, s4, s5, s6, screen;
    wire cycle;  
    wire cl, cl2;
    wire [16:0] LED1;

    assign LED[15] = LED1[15];
    assign LED[14] = LED1[14];
    assign LED[13] = LED1[13];
    assign LED[12] = LED1[12];
    assign LED[11] = LED1[11];
    assign LED[10] = LED1[10];
    assign LED[9] = LED1[9];
    assign LED[8] = LED1[8];
    assign LED[7] = LED1[7];
    assign LED[6] = LED1[6];
    assign LED[5] = LED1[5];
    assign LED[4] = LED1[4];
    assign LED[3] = LED1[3];
    assign LED[2] = LED1[2];
    assign LED[1] = LED1[1];
    assign LED[0] = LED1[0];

    Clk mod1(.CCLK(CCLK), .clkscale(5000), .clk(cl));
    lfsr_10bit mod2(.clk(cl), .sh_en(ENGAGE), .rst_en(RESET), .Q_out(LED1), .fullcycle(cycle));
    moore mod3(.clk(cl), .rst_en(RESET), .sh_en(ENGAGE), .Q_out(LED1[0]), .max_tick_reg(s1));
    moore mod4(.clk(cl), .rst_en(RESET), .sh_en(ENGAGE), .Q_out(LED1[1]), .max_tick_reg(s2));
    moore mod5(.clk(cl), .rst_en(RESET), .sh_en(ENGAGE), .Q_out(LED1[2]), .max_tick_reg(s3));
    moore mod6(.clk(cl), .rst_en(RESET), .sh_en(ENGAGE), .Q_out(LED1[3]), .max_tick_reg(s4));
    moore mod7(.clk(cl), .rst_en(RESET), .sh_en(ENGAGE), .Q_out(LED1[4]), .max_tick_reg(s5));
    moore mod8(.clk(cl), .rst_en(RESET), .sh_en(ENGAGE), .Q_out(LED1[5]), .max_tick_reg(s6));
    seven_segment_controller mod9(.clk(CCLK), .reset(RESET), .temp(countwire), .anode_select(anode_sel), .LED_out(seven_seg));
    assign screen = s1 | s2 | s3 | s4 | s5 | s6;
    always @ (posedge cl) begin
        if (ENGAGE)begin
            if (screen == 1'b1) begin
                count <= countwire + 1'b1;
                end
            
            if (cycle == 1'b1) begin
                count <= 15'd0;
            end
            
            if (RESET) begin
                count <= 15'd0;
            end

            end
      
        end
        
        assign countwire = count;
    
endmodule
