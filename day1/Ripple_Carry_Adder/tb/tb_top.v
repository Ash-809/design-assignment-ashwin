`timescale 1ns / 1ps
module tb_rca_4bit;
    reg [3:0] a;
    reg [3:0] b;
    reg cin;
    wire [3:0] sum;
    wire cout;

    rca_4bit uut (
        .a(a), 
        .b(b), 
        .cin(cin), 
        .sum(sum), 
        .cout(cout)
    );

    initial begin
        a = 4'd4; b = 4'd3; cin = 0; #10;
        a = 4'd9; b = 4'd7; cin = 0; #10;
        $finish;
    end
endmodule
