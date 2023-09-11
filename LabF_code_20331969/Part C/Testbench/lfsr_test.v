`timescale 1 ns/10 ps

module lsfr_test();
   // declaring our wires for input and ouput
   localparam T = 20;
   reg clk, sh_en, rst_en;
   wire [16:0] Q_out;
   wire tick;
   //wire [16:0] tick_high, tick_low;

   // initialising our test variables with variables for display
   lfsr_10bit uut(.clk(clk), .sh_en(sh_en), .max_tick_reg(tick), .rst_en(rst_en), .Q_out(Q_out));
	
   always
        begin
            clk = 1'b1;
            #(T/2);
            clk = 1'b0;
            #(T/2);
           
        end
        
    initial
        begin
            rst_en = 1'b1;
            #(T*10) ;
            rst_en = 1'b0;    
        end
        
        
    initial
        begin
            sh_en = 1'b0;
            #(T*10);
            sh_en = 1'b1;
            #(T);

        end
   
          

endmodule

