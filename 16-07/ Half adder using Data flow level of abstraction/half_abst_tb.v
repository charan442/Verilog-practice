`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.07.2024 21:23:57
// Design Name: 
// Module Name: half_abst_tb
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


module half_abst_tb;
//inputs
reg a;
reg b;
//outputs
wire s;
wire c;
//instantiate the unit under test (uut)
half_abst uut(
.s(s),
.c(c),
.a(a),
.b(b)
);
initial begin 
   a=1'b0; b=1'b0;
#2 a=1'b0; b=1'b1;
#2 a=1'b1; b=1'b0;
#2 a=1'b1; b=1'b1;
end
initial
$monitor("time=%s,s=%b,c=%b,a=%b,b=%b",$time,s,c,a,b);
initial #20 $finish;
endmodule
  
