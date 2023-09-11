`timescale 1 ns/10 ps

module lsfr_test();
   // declaring our wires for input and ouput
   localparam T = 20;
   reg clk, sh_en, rst_en;
   wire [16:0] Q;
   wire tick;
   wire [9:0] count;
   //wire [16:0] tick_high, tick_low;

   // initialising our test variables with variables for display
   TOP_DAWG uut(.CCLK(clk), .RESET(rst_en), .ENGAGE(sh_en), .LED(Q));

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

