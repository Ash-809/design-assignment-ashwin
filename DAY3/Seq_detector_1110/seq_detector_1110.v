`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2026 11:49:58
// Design Name: 
// Module Name: sequence_detector_1110
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sequence_detector_1110(input clk,
    input rst,
    input in_bit,
    output reg out_bit
);

    // State Encoding
    parameter S0 = 2'b00,
              S1 = 2'b01,
              S2 = 2'b10,
              S3 = 2'b11;

    reg [1:0] current_state, next_state;

    // Sequential Logic: State transition on clock edge
    always @(posedge clk or posedge rst) begin
        if (rst)
            current_state <= S0;
        else
            current_state <= next_state;
    end

    
    always @(*) begin
        next_state = current_state;
        out_bit = 1'b0;

        case (current_state)
            S0: begin
                if (in_bit)
                    next_state = S1;
                else
                    next_state = S0;
            end
            
            S1: begin
                if (in_bit)
                    next_state = S2;
                else
                    next_state = S0;
            end
            
            S2: begin
                if (in_bit)
                    next_state = S3;
                else
                    next_state = S0;
            end
            
            S3: begin
                if (in_bit) begin
                    
                    next_state = S3; 
                end else begin
                    
                    next_state = S0; 
                    out_bit = 1'b1;  
                end
            end
            
            default: next_state = S0;
        endcase
    end
endmodule
