`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.07.2024 20:58:17
// Design Name: 
// Module Name: add_4_bit
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


module add_4_bit(s,co,a,b,ci);
input [3:0] a,b;
input ci;
output [3:0] s;
output co;
wire [2:0] c;
full_3 add1(s[0],c[0],a[0],b[0],ci);
full_3 add2(s[1],c[1],a[1],b[1],c[0]);
full_3 add3(s[2],c[2],a[2],b[2],c[1]);
full_3 add4(s[3],co,a[3],b[3],c[2]);
endmodule

module full_3(s,co,a,b,c);
input a,b,c;
output reg s,co;
always @(*)
begin
s=a^b^c;
co=(a&b)|(b&c)|(a&c);
end
endmodule



 
