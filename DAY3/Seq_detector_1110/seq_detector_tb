`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2026 13:54:41
// Design Name: 
// Module Name: seq_detector_tb
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


module seq_detector_tb;

    
    reg clk;
    reg rst;
    reg in_bit;

    
    wire out_bit;

    
    sequence_detector_1110 uut (
        .clk(clk),
        .rst(rst),
        .in_bit(in_bit),
        .out_bit(out_bit)
    );

    
    always #5 clk = ~clk;

    initial begin
        
        clk = 0;
        rst = 1;
        in_bit = 0;

        
        #20;
        rst = 0;

        
        
        #10 in_bit = 0;
        #10 in_bit = 1; 
        #10 in_bit = 1; 
        #10 in_bit = 1; 
        #10 in_bit = 1; 
        #10 in_bit = 0; 
        
        #10 in_bit = 1; 
        #10 in_bit = 1; 
        #10 in_bit = 1; 
        #10 in_bit = 0; 
        
        #10 in_bit = 0; 

        
        #20 $finish;
    end

    
    initial begin
        $monitor("Time=%0t | clk=%b | rst=%b | in_bit=%b | out_bit=%b", 
                 $time, clk, rst, in_bit, out_bit);
    end
endmodule
