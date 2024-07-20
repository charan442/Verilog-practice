`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.07.2024 22:55:31
// Design Name: 
// Module Name: Full_df
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


module Full_df(s,co,a,b,c);
input a, b, c;
output s, co;
assign s=a^b^c;
assign co=(a&b)|(b&c)|(a&c);
endmodule
