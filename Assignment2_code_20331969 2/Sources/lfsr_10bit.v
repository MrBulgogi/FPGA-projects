
module lfsr_10bit
     ( input wire  clk, sh_en, rst_en,
     output wire  [16:0] Q_out,
     output reg fullcycle = 1'b0
     );
     localparam seed = 17'h3DDF;
     reg [16:0] Q_state = 17'h0;
     wire [16:0] Q_ns;
     reg [31:0] count = 32'b0;
     wire [2:0] garbage;
     
     MSB_counter mod3(.clk(clk), .MSB(Q_ns[15]));
    
     //Clk mod1(.CCLK(clk), .clkscale(17'd131071), .clk(tick_high), .clkq(tick_low));
          //next state logic
     assign Q_fb = Q_state[16] ^ Q_state[13];
     assign Q_ns = {Q_state[15:0], Q_fb};
     //output logic
     
    
     
     always @ (posedge clk) begin
        
        if (rst_en)begin
            Q_state <= seed;
            count <= 32'b0;
            end
        else if (sh_en) begin
            count <= count + 1;
            Q_state <= Q_ns;
            if (count >= 131071)begin
                count <= 32'b0;
                fullcycle <= 1'b1;
                end
            else begin
                fullcycle <= 1'b0;
                end
            end          
        else begin
            Q_state <= Q_state;
            end
        end
        
         assign Q_out = Q_state;
        
        
     
endmodule

