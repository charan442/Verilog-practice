`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.07.2024 14:57:13
// Design Name: 
// Module Name: half_sub_str
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


module half_sub_str(d,bo,a,b);
input a,b;
output d,bo;
wire abar;
xor (d,a,b);
not (abar,a);
and (bo,abar,b);
endmodule
