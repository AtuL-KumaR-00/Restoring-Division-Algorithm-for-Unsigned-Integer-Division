`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/10/2022 08:08:02 PM
// Design Name: 
// Module Name: divider_4x4
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


module divider_4x4(
    input [3:0] Q,  //dividend
    input [4:0] M,  //divisor
    output reg [3:0] Q_out, //Q_out=Q/M;
    output reg [4:0] rem
    );
    integer i;
    reg [4:0]A;
    reg [3:0]Q_int;
    //reg [3:0]AM;
    always @(Q or M) begin
        A=5'b00000;
        Q_int=Q;
        for(i=0;i<4;i=i+1) begin
            A={A[3:0],Q_int[3]};
            A = A + ~M + 1;
            if(A[4]==1'b0)   begin
                Q_int={Q_int[2:0],1'b1};
                //A=AM;
                end
            else begin 
                Q_int={Q_int[2:0],1'b0};
                A= A + M;
                end
        end
        Q_out = Q_int;
        rem = A;
    end
endmodule
