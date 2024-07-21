`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.07.2024 16:23:25
// Design Name: 
// Module Name: full_sub_str
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


module full_sub_str(output d,bo, input a,b,bi);
wire abar,vlbar,v3,v2,v1;
xor g1(v1,a,b);
xor g2(d,v1,bi);
not g3(vlbar,v1);
not g4(abar,a);
and g5(b,abar,v2);
and g6(bi,vlbar,v3);
or g7(b0,v2,v3);
endmodule
