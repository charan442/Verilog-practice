`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.07.2024 21:04:51
// Design Name: 
// Module Name: add_4_bit_tb
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


module add_4_bit_tb;
//inputs
reg [3:0] a;
reg [3:0] b;
reg [3:0] ci;
//outputs
wire [3:0] s;
wire co;
//instantiate the unit under test (uut)
add_4_bit uut(
.s(s),
.co(co),
.a(a),
.b(b),
.ci(ci)
);
initial begin
a=4'b0000; b=4'b0000; ci=0;
end
always #1 b=b+1'b1;
always #2 a=a+1'b1;
initial #100 $finish;
endmodule
