`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.07.2024 21:30:31
// Design Name: 
// Module Name: Full_str
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


module Full_str(output s,co,input a,b,c);
wire t1,t2,k;
xor g1(s,a,b,c);
xor g2(k,a,b);
and (t1,a,b);
and (t2,k,c);
or (co,t1,t2);
endmodule

