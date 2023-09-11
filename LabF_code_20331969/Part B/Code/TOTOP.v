
module Top_File(
    input clk,
    input reset,
    output [3:0] anode_sel,
    output [6:0] led_out,
    input [4:0] button_input
    );
    
    wire [7:0] Q;
    reg [7:0] Q_next;
    wire [4:0] buttons;
	
    //calling a dd_ff_reset for each bit for shifting
    d_ff_reset DFF0(.clk(clk), .reset(reset), .d(Q_next[0]), .q(Q[0]));
    d_ff_reset DFF1(.clk(clk), .reset(reset), .d(Q_next[1]), .q(Q[1]));
    d_ff_reset DFF2(.clk(clk), .reset(reset), .d(Q_next[2]), .q(Q[2]));
    d_ff_reset DFF3(.clk(clk), .reset(reset), .d(Q_next[3]), .q(Q[3]));
    d_ff_reset DFF4(.clk(clk), .reset(reset), .d(Q_next[4]), .q(Q[4]));
    d_ff_reset DFF5(.clk(clk), .reset(reset), .d(Q_next[5]), .q(Q[5]));
    d_ff_reset DFF6(.clk(clk), .reset(reset), .d(Q_next[6]), .q(Q[6]));
    d_ff_reset DFF7(.clk(clk), .reset(reset), .d(Q_next[7]), .q(Q[7]));
    
    //initialising seven segment display
    seven_segment_controller mod1(.clk(clk), .reset(reset), .temp(Q), .anode_select(anode_sel), .LED_out(led_out));
    
    //initialising debouncer for button presses
    debouncer mod2 (.clk(clk), .reset(reset), .button_in(button_input), .button_out(buttons));
    

    //addding to Q_next at positive edge and removing at negative edge
    always @(posedge clk) begin
        if (buttons[0] | buttons[3])
            Q_next = Q + 1'b1;
        else if (buttons[2] | buttons[1])
            Q_next = Q - 1'b1;
        else if (buttons[4])
            Q_next = 5'b10110;
        else 
            Q_next = Q;
        end

endmodule