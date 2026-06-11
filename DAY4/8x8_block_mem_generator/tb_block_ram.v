`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 15:37:13
// Design Name: 
// Module Name: tb_block_ram
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


module tb_block_ram;
reg clk;
    reg arstn;
    reg wrenb;
    reg [7:0] wraddres;
    reg [7:0] rdaddres;
    reg [7:0] data_in;
    wire [7:0] data_out;

    block_ram uut (
        .clk(clk),
        .arstn(arstn),
        .wrenb(wrenb),
        .wraddres(wraddres),
        .rdaddres(rdaddres),
        .data_in(data_in),
        .data_out(data_out)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        arstn = 0;
        wrenb = 0;
        wraddres = 0;
        rdaddres = 0;
        data_in = 0;

        #10 arstn = 1;

        #10 wrenb = 1;      
        wraddres = 8'hA5; 
        data_in = 8'h3C;  
        #10;

        wraddres = 8'h5A; 
        data_in = 8'hFF;  
        #10;

        wrenb = 0;       
        rdaddres = 8'hA5; 
        #10;

        rdaddres = 8'h5A; 
        #20;

        $finish;
    end
endmodule
