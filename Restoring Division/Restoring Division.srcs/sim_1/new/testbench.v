`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/10/2022 08:28:28 PM
// Design Name: 
// Module Name: testbench
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


module testbench;
    reg [4:0]a; //divisor
    reg [3:0]b; //dividend
    wire [4:0] rem;
    wire [3:0] Q_out;   //O_out= b/a;
    
    divider_4x4 uut(.Q(b),.M(a),.Q_out(Q_out),.rem(rem));
    initial begin
        #10;
        b=2;a=1;
        #100;
        b=5;a=2;
        #100;
        b=14;a=3;
        #100;
        b=11;a=4;
        #100;
        b=15;a=5;
        #100;
    end
endmodule
