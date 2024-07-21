`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.07.2024 19:21:37
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb;
//inputs
reg a;
reg b;
reg ci;
//outputs
wire s;
wire co;
//instantiate the unit under test (uut)
full_adder uut(
.s(s),
.co(co),
.a(a),
.b(b),
.ci(ci)
);
initial begin
a=1'b1; b=1'b0; ci=1'b1;
end
always #2 a=a+1'b1;
always #3 b=b+1'b1;
always #4 ci=ci+1'b1;
initial $monitor("s=%b,co=%b,a=%b,b=%b,ci=%b",s,co,a,b,ci);
initial #100 $finish;
endmodule
