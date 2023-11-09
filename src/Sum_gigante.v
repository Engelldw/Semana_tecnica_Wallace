`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2023 19:15:08
// Design Name: 
// Module Name: Sum_gigante
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


module Sum_gigante(
    input [8:0] A,
    input [8:0] B,
    output [9:0] S
    );

assign S = A+B;
endmodule
