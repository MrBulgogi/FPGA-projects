
module moore
     ( input wire  clk, rst_en, sh_en,
     input wire Q_out,
     output reg max_tick_reg = 1'b0
     );
     reg tick;
     parameter state0=4'b0000, 
               state1=4'b0001,
               state2=4'b0010,
               state3=4'b0011,
               state4=4'b0100, 
               state5=4'b0101,
               state6=4'b0110,
               state7=4'b0111,
               state8=4'b1001,
               state9=4'b1010,
               state10=4'b1011;
               
     reg [3:0] nst, st;
     
     always @ (posedge clk) begin
        if (rst_en) begin
            st <= state1;
            end
        else begin
            st <= nst;
            end
     end
     
     always @ * begin
        if (st == state0) begin
            if (Q_out == 1'b1) begin
                nst <= state1;
                max_tick_reg <= 1'b0;
                end
            else begin
                nst <= state0;
                max_tick_reg <= 1'b0;
                end
            end
        else if (st == state1)begin
            if (Q_out == 1'b0) begin
                nst <= state2;
                max_tick_reg <= 1'b0;
                end
            else begin
                nst <= state1;
                max_tick_reg <= 1'b0;
                end
            end
        else if (st == state2)begin
            if (Q_out == 1'b0) begin
                nst <= state3;
                max_tick_reg <= 1'b0;
                end
            else begin
                nst <= state0;   
                max_tick_reg <= 1'b0;
                end
            end 
        else if (st == state3)begin
            if (Q_out == 1'b1) begin
                nst <= state4;
                max_tick_reg <= 1'b0;
                end
            else begin
                nst <= state0;
                max_tick_reg <= 1'b0;
                end  
            end
        else if (st == state4)begin
            if (Q_out == 1'b1)begin
                nst <= state5;
                max_tick_reg <= 1'b0;
                end
            else begin
                nst <= state2;
                max_tick_reg <= 1'b0;
                end
            end
        else if (st == state5)begin
            if (Q_out == 1'b1)begin
                nst <= state6;
                max_tick_reg <= 1'b0;
                end
            else begin
                nst <= state2;
                end
            end   
        else if (st == state6)begin
            if (Q_out == 1'b1)begin
                nst <= state7;
                max_tick_reg <= 1'b0;
                end
            else begin
                nst <= state2;
                max_tick_reg <= 1'b0;
                end
            end
        else if (st == state7)begin
            if (Q_out == 1'b0) begin
                nst <= state8;
                max_tick_reg <= 1'b0;
                end
            else begin
                nst <= state0;
                max_tick_reg <= 1'b0;
                end
            end
        else if (st == state8)begin
            if (Q_out == 1'b0) begin
                nst <= state9;
                max_tick_reg <= 1'b0;
                end
            else begin
                nst <= state0;
                max_tick_reg <= 1'b0;
                end
            end
        else if (st == state9)begin
            if (Q_out == 1'b1) begin
                nst <= state10;
                max_tick_reg <= 1'b0;
                end
            else begin
                nst <= state0;
                max_tick_reg <= 1'b0;
                end
            end
        else if (st == state10)begin
            if (Q_out == 1'b1) begin
                max_tick_reg <= 1'b1;
                nst <= state0;
                end
            else begin           
                nst <= state2; 
                max_tick_reg <= 1'b0;
                end
            end
        else nst <= state0;   
    end

endmodule
