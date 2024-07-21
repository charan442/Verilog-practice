`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.07.2024 16:29:47
// Design Name: 
// Module Name: full_sub_str_tb
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


module full_sub_str_tb;
//inputs
reg a;
reg b;
reg bi;
//outputs
wire d;
wire bo;
//instantiate the unit under test (uut)
full_sub_str uut(
.d(d),
.bo(bo),
.a(a),
.b(b),
.bi(bi)
);
initial begin
a=0;b=0;bi=0;
end
always #4 a=a+1'b1;
always #2 b=b+1'b1;
always #1 bi=bi+1'b1;
initial #20 $finish;
endmodule
