`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.07.2024 21:36:59
// Design Name: 
// Module Name: Full_str_tb
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


module Full_str_tb;
//inputs
reg a;
reg b;
reg c;
//outputs
wire s;
wire co;
//instantiate the unit under test (uut)
Full_str uut(
.s(s),
.co(co),
.a(a),
.b(b),
.c(c)
);
initial begin
{a,b,c}=3'b000;
#2 {a,b,c}=3'b001;
#2 {a,b,c}=3'b010;
#2 {a,b,c}=3'b011;
#2 {a,b,c}=3'b100;
#2 {a,b,c}=3'b101;
#2 {a,b,c}=3'b110;
#2 {a,b,c}=3'b111;
end
initial $monitor("s=%b,co=%b,a=%b,b=%b,c=%b",s,co,a,b,c);
initial #20 $finish;
endmodule
