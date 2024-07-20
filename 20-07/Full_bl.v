`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.07.2024 23:23:38
// Design Name: 
// Module Name: Full_bl
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


module Full_bl(s,co,a,b,cin);
input a,b,cin;
output reg s,co;
always @(*)
begin
s=(a^b^cin);
co=(a&b)|(b&cin)|(cin&a);
end
endmodule
