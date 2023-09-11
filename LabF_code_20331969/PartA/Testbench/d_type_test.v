`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// The 'timescale directive specifies that
// the sim~rlation tinre unit is I trs and // the simulator tinrestep is 10 ps
module d_type_test();
// declaration
    localparam T=20;
    reg clk, reset;
    reg d;
    wire q;
// clock
    //init the module dd_ff_reset
    d_ff_reset uut (.clk(clk), .reset(reset), .d(d), .q(q));
          
          
always
//block that simulates a clock
begin
    clk = 1'b1;
    #(T/2);
    clk = 1'b0;
    #(T/2);
   
end

//block that triggers when reset is high and low
initial
begin
    reset = 1'b1;
    #(T/2) ;
    reset = 1'b0;
end

//block that triggers when d is high or low
initial
begin
    d = 1'b0;
    #(T) ;
    d = 1'b1;
    #(T + T/2) ;
    d = 1'b0;
    #(T) ;
    d = 1'b0;
    #(5*T) ;
end

endmodule
