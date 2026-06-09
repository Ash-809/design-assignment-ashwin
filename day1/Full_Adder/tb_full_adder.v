`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 14:47:25
// Design Name: 
// Module Name: fulladd_b
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


module fulladd_b(

    );
    reg a_tb,b_tb,cin_tb;
    wire sum_tb,cout_tb;
    fulladder_behavioural dut(a_tb,b_tb,cin_tb,sum_tb,cout_tb);
    initial
    begin
    {a_tb,b_tb,cin_tb}=0;
    end
    initial
    begin
    a_tb=1'b0;
    b_tb=1'b0;
    cin_tb=1'b0;
    #1;
    a_tb=1'b0;
    b_tb=1'b1;
    cin_tb=1'b0;
    #1;
    a_tb=1'b0;
    b_tb=1'b1;
    cin_tb=1'b10;
    #1;
    a_tb=1'b1;
    b_tb=1'b0;
    cin_tb=1'b0;
    #1;
    a_tb=1'b1;
    b_tb=1'b0;
    cin_tb=1'b1;
    #1;
    a_tb=1'b1;
    b_tb=1'b0;
    cin_tb=1'b0;
    #1;
    a_tb=1'b1;
    b_tb=1'b1;
    cin_tb=1'b1;
    
    $monitor("the value of a_tb is %b the value of b_tb is %b the value of cin_tb is %b the value of sum_tb is %b the value of cout_tb is %b",a_tb,b_tb,cin_tb,sum_tb,cout_tb); 
    
    end
endmodule
