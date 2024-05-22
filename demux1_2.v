`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2024 11:23:46
// Design Name: 
// Module Name: demux1_2
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


module demux1_2(
output I0,I1,
input A,S);
wire Sbar;
not g1(Sbar,S);
and g2(I0,A,Sbar);
and g3(I1,A,S);
endmodule
//test bench 
module demux_tb;
reg A,S;
wire I0,I1;
demux1_2 uut(
.A(A),
.S(S),
.I0(I0),
.I1(I1));
initial begin 
#10 A=1'b1;S=1'b0;
#10 A=1'b0;S=1'b1;
#10 A=1'b0;S=1'b0;
#10 A=1'b0;S=1'b0;
#10 $stop;
end 
endmodule



















