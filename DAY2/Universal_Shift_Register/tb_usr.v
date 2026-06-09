`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2026 17:01:42
// Design Name: 
// Module Name: usr_tb
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


module usr_tb;
reg clk;
    reg rst;
    reg sin;
    reg [3:0] pin;
    reg shift;
    reg load;
    reg [1:0] mod;
    wire Sout;
    wire [3:0] Pout;

    universal_shift_register uut (
        .clk(clk),
        .rst(rst),
        .sin(sin),
        .pin(pin),
        .shift(shift),
        .load(load),
        .mod(mod),
        .Sout(Sout),
        .Pout(Pout)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;
        sin = 0;
        pin = 4'b0000;
        shift = 0;
        load = 0;
        mod = 2'b00;

        #10 rst = 0;

        mod = 2'b00;
        shift = 1;
        sin = 1; #10;
        sin = 0; #10;
        shift = 0;

        #10;
        mod = 2'b01;
        shift = 1;
        sin = 1; #10;
        sin = 1; #10;
        shift = 0;

        #10;
        mod = 2'b10;
        load = 1;
        pin = 4'b1010; #10;
        load = 0;
        shift = 1; #20;
        shift = 0;

        #10;
        mod = 2'b11;
        load = 1;
        pin = 4'b1100; #10;
        load = 0;

        #20 $finish;
    end
    
    initial begin
        $monitor("Time=%0t | rst=%b | mod=%b | shift=%b | load=%b | sin=%b | pin=%b | Pout=%b | Sout=%b", 
                 $time, rst, mod, shift, load, sin, pin, Pout, Sout);
    end
endmodule
