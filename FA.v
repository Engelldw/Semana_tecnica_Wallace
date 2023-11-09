`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.04.2023 14:53:09
// Design Name: 
// Module Name: FA
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


module FA(
    input A,
    input B,
    input Cin,
    output C,
    output S
    );
wire XORAB,CAND1,CAND2,CAND3,OR1;
assign XORAB = A^B;
assign S = Cin^XORAB;
//compuerta_xor xor2 (A,B,XORAB);
//compuerta_xor xor3 (Cin,XORAB,S);

assign C = (Cin & (A|B))| A&B;

endmodule
