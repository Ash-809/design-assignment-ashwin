`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2026 17:56:00
// Design Name: 
// Module Name: tb_sr_ff
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


module tb_sr_ff;
reg clk;
    reg rst;
    reg s;
    reg r;

    wire q;
    wire q_bar;

    sr_ff uut (
        .clk(clk),
        .rst(rst),
        .s(s),
        .r(r),
        .q(q),
        .q_bar(q_bar)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    initial begin
        rst = 1; s = 0; r = 0;
        #20; 
        
        rst = 0; 

        #10 s = 1; r = 0;
        
        #10 s = 0; r = 0;
        
        #10 s = 0; r = 1;
        
        #10 s = 0; r = 0;
        
        #10 s = 1; r = 1;
        
        #10 s = 0; r = 1;

        #20 $finish;
    end
endmodule
