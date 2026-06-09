`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2026 16:59:33
// Design Name: 
// Module Name: universal_shift_register
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


module universal_shift_register(input clk,
    input rst,
    input sin,
    input [3:0] pin,
    input shift,
    input load,
    input [1:0] mod,
    output reg Sout,
    output reg [3:0] Pout
);

    always @(posedge clk) begin
        if (rst) begin
            Pout <= 4'b0000;
            Sout <= 1'b0;
        end else begin
            case (mod)
                2'b00: begin
                    if (shift) begin
                        Pout <= {Pout[2:0], sin};
                        Sout <= Pout[3];
                    end
                end
                
                2'b01: begin
                    if (shift) begin
                        Pout <= {Pout[2:0], sin};
                    end
                end
                
                2'b10: begin
                    if (load) begin
                        Pout <= pin;
                    end else if (shift) begin
                        Sout <= Pout[3];
                        Pout <= {Pout[2:0], 1'b0};
                    end
                end
                
                2'b11: begin
                    if (load) begin
                        Pout <= pin;
                    end
                end
                
                default: Pout <= Pout;
            endcase
        end
    end
endmodule
