`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.07.2024 23:26:59
// Design Name: 
// Module Name: Full_bl_tb
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


module Full_bl_tb;
//inputs
reg a;
reg b;
reg in;
//outputs
wire s;
wire co;
//instantiate the unit under test (uut)
Full_df uut(
.s(s),
.co(co),
.a(a),
.b(b),
.cin(cin)
);
initial begin
{a,b,cin}=3'b000;
#2 {a,b,cin}=3'b001;
#2 {a,b,cin}=3'b010;
#2 {a,b,cin}=3'b011;
#2 {a,b,cin}=3'b100;
#2 {a,b,cin}=3'b101;
#2 {a,b,cin}=3'b110;
#2 {a,b,cin}=3'b111;
end
initial $monitor("s=%b,co=%b,a=%b,b=%b,cin=%b",s,co,a,b,cin);
initial #20 $finish;
endmodule

    