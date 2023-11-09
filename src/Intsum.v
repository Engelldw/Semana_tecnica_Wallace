`timescale 1ns / 1ps

module src(
    input clk,
    input [5:0]entrA,
    input [5:0]entrB,
    output [12:0]Sal
    );
    wire ANT1,ANT2,ANT3,ANT4,ANT5,ANT6,ANT7,ANT8,ANT9,ANT10,ANT11,ANT12;
    wire ANT13,ANT14,ANT15,ANT16,ANT17,ANT18,ANT19,ANT20,ANT21,ANT22,ANT23,ANT24;
    wire ANT25,ANT26,ANT27,ANT28,ANT29,ANT30,ANT31,ANT32,ANT33,ANT34,ANT35,ANT36;
    
    wire C1,C2,C3,C4,C5,C6,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16,C17,C18,C19,C20,C21,C22,C23,C24,C25;
    wire sal1,sal2,sal3,sal4,sal5,sal6,sal7,sal8,sal9,sal10,sal11,sal12,sal13,sal14,sal15,sal16,sal17,sal18,sal19,sal20,sal21,sal22,sal23,sal24;
    
    wire [8:0]Av,Bv;
    wire [9:0]Sv;
    
    wire cablesuma;
    
    wire [5:0]A,B;
    wire [12:0]S;
    flip_entr flipA (clk,entrA,A);
    flip_entr flipB (clk,entrB,B);
    assign ANT1  = A[0] & B[0];
    assign ANT2  = A[1] & B[0];
    assign ANT3  = A[2] & B[0];
    assign ANT4  = A[3] & B[0];
    assign ANT5  = A[4] & B[0];
    assign ANT6  = A[5] & B[0];
    
    assign ANT7   = A[0] & B[1];
    assign ANT8   = A[1] & B[1];
    assign ANT9   = A[2] & B[1];
    assign ANT10  = A[3] & B[1];
    assign ANT11  = A[4] & B[1];
    assign ANT12  = A[5] & B[1];

    assign ANT13  = A[0] & B[2];
    assign ANT14  = A[1] & B[2];
    assign ANT15  = A[2] & B[2];
    assign ANT16  = A[3] & B[2];
    assign ANT17  = A[4] & B[2];
    assign ANT18  = A[5] & B[2];
    
    assign ANT19  = A[0] & B[3];
    assign ANT20  = A[1] & B[3];
    assign ANT21  = A[2] & B[3];
    assign ANT22  = A[3] & B[3];
    assign ANT23  = A[4] & B[3];
    assign ANT24  = A[5] & B[3];
    
    assign ANT25  = A[0] & B[4];
    assign ANT26  = A[1] & B[4];
    assign ANT27  = A[2] & B[4];
    assign ANT28  = A[3] & B[4];
    assign ANT29  = A[4] & B[4];
    assign ANT30  = A[5] & B[4];
    
    assign ANT31  = A[0] & B[5];
    assign ANT32  = A[1] & B[5];
    assign ANT33  = A[2] & B[5];
    assign ANT34  = A[3] & B[5];
    assign ANT35  = A[4] & B[5];
    assign ANT36  = A[5] & B[5];
    
    assign S[0] = ANT1;
    
    HA Ha1 (ANT2,ANT7,C1,S[1]);
    FA Fa1 (ANT3,ANT8,ANT13,C2,sal1);
    FA Fa2 (ANT5,ANT10,ANT15,C3,sal2);
    FA Fa3 (ANT32,ANT27,ANT22,C4,sal3);
    FA Fa4 (ANT34,ANT29,ANT24,C5,sal4);
    
    FA Fa5 (ANT4,ANT9,ANT14,C6,sal5);
    FA Fa6 (ANT6,ANT11,ANT16,C7,sal6);
    FA Fa7 (ANT33,ANT28,ANT23,C8,sal7);
    
    FA Fa8 (ANT21,ANT26,ANT31,C9,sal8);
    FA Fa9 (ANT17,ANT12,sal3,C10,sal9);
    FA Fa10 (ANT18,C4,sal7,C11,sal10);
    FA Fa11 (ANT35,ANT30,C5,C12,sal11);
    
    HA Ha2 (ANT19,C2,C13,sal12);
    FA Fa12 (sal2,ANT20,C6,C14,sal13);
    FA Fa13 (sal6,sal8,C3,C15,sal14);
    FA Fa14 (C7,sal9,C9,C16,sal15);
     
    HA Ha3 (sal10,C10,C17,sal16);
    FA Fa15 (C11,sal4,C8,C18,sal17);
    
    HA Ha4 (C13,sal13,C19,sal18);
    
    //HA Ha5 (C13,sal13,C19,sal18);
    HA Ha6 (C14,sal14,C20,sal19);
    HA Ha7 (C15,sal15,C21,sal20);
    HA Ha8 (C16,sal16,C22,sal21);
    HA Ha9 (C17,sal17,C23,sal22);
    HA Ha10 (C18,sal11,C24,sal23);
    HA Ha11 (ANT36,C12,C25,sal24);
    assign Av= {C24,C23,C22,C21,C20,C19,ANT25,sal5,C1};
    assign Bv= {sal24,sal23,sal22,sal21,sal20,sal19,sal18,sal12,sal1};
    
    Sum_gigante misum (Av,Bv,Sv);
    
    assign S[2] = Sv[0];
    assign S[3] = Sv[1];
    assign S[4] = Sv[2];
    assign S[5] = Sv[3];
    assign S[6] = Sv[4];
    assign S[7] = Sv[5];
    assign S[8] = Sv[6];
    assign S[9] = Sv[7];
    assign S[10]= Sv[8];
    assign cablesuma = Sv[9];
    
    HA Ha12 (cablesuma,C25,S[12],S[11]);
    
    flip_sal flipsal (clk,S,Sal);
endmodule
