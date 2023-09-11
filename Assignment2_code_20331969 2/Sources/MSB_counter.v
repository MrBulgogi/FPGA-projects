
module MSB_counter(
    input wire clk,
    input wire MSB
    );
    
    reg [16:0] countzero = 17'b0;
    reg [16:0] countone = 17'b0;
    
    wire [16:0] garbage1, garbage2;
    
    assign garbage1 = countzero;
    assign garbage2 = countone;
    
     always @ (posedge clk) begin
        if (MSB == 1'b0)
            countzero = countzero + 1'b1;
        else if (MSB == 1'b1)
            countone = countone + 1'b1;
        else begin
            countzero = countzero;
            countone = countone;
            end
        end
    
endmodule
