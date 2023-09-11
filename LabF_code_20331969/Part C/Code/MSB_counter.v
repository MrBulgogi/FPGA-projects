
module MSB_counter(
    input wire clk,
    input wire MSB
    );
    
    reg [16:0] countzero = 17'b0;
    reg [16:0] countone = 17'b0;
    
    wire [16:0] garbage1, garbage2;

    //assigning countzero and one to garbage wires
    assign garbage1 = countzero;
    assign garbage2 = countone;
    
     //when the most significant bit is 1 increment socunt 1 and if its 0 increment count0
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
