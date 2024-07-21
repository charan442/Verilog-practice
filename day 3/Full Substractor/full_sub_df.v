`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.07.2024 18:19:38
// Design Name: 
// Module Name: full_sub_df
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


module full_sub_df(output d,bo, input a,b,bi);
assign d=a^b^bi;
assign bo= ((~a)&b)|(~(a^b)&bi);
endmodule
