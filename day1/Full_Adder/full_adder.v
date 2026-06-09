`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 13:43:57
// Design Name: 
// Module Name: fulladd
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


module fulladd(input A_FA,B_FA,C_FA,output sum_FA,carry_FA

    );
    wire w1,w2,w3;
    halfadder HA1(.A(A_FA),.B(B_FA),.sum(w1),.carry(w2));
    halfadder HA2(.A(w1),.B(cin_FA),.sum(sum_FA),.carry(w3));
    or(carry_FA,w3,w2);
    
endmodule
