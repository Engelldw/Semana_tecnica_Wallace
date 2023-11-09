`timescale 1ns / 1ps

module flip_entr(
    input clk,
    input [5:0] A,
    output reg [5:0] RA
    );
    
    always @ (posedge clk)
    RA<=A;
endmodule
