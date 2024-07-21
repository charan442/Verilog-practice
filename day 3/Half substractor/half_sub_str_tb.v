`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.07.2024 15:00:55
// Design Name: 
// Module Name: half_sub_str_tb
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


module half_sub_str_tb;
//inputs
reg a;
reg b;
//outputs
wire d;
wire bo;
//instantiate the unit under test (uut)
half_sub_str uut(
.d(d),
.bo(bo),
.a(a),
.b(b)
);
initial begin
a=0;b=0;
#2 a=1'b0;b=1'b1;
#2 a=1'b1;b=1'b0;
#2 a=1'b1;b=1'b1;
end 
initial $monitor("d=%b,bo=%b.a=%b,b=%b",d,bo,a,b);
initial #8 $finish;
endmodule
