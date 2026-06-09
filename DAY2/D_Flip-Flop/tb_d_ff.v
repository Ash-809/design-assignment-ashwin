`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2026 18:14:37
// Design Name: 
// Module Name: tb_d_ff
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


module tb_d_ff;
reg clk;
    reg rst;
    reg d;

    wire q;
    wire q_bar;

    dff uut (
        .clk(clk),
        .rst(rst),
        .d(d),
        .q(q),
        .q_bar(q_bar)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    initial begin
        rst = 1; d = 0;
        #20; 
        
        rst = 0; 
        
        #15 d = 1;
        
        #10 d = 0;
        
        #20 d = 1;
        
        #10 rst = 1;
        
        #10 rst = 0;

        #20 $finish;
    end
endmodule
