`timescale 1ns / 1ps

module flip_sal(
    input clk,
    input [12:0] A,
    output reg [12:0] RA
    );
    
    always @ (posedge clk)
    RA<=A;
endmodule
