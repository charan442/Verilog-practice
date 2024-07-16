`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.07.2024 20:23:43
// Design Name: 
// Module Name: half_adder_tb
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


module half_adder_tb;
//inputs
reg a;
reg b;
//outputs
wire s;
wire c;
//instantiate the unit under test(uut)
half_adder uut(
.s(s),
.c(c),
.a(a),
.b(b)
);
initial begin
//initialize inputs
 a=1'b0; b=1'b0;
#2 a=1'b0; b=1'b1;
#2 a=1'b1; b=1'b0;
#2 a=1'b1; b=1'b1;
end
initial
$monitor("time=%g,s=%b,c=%b,a=%b,b=%b",$time,s,c,a,b);
initial #10 $finish;
endmodule
