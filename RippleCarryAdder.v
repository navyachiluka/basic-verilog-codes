`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Chiluka Navya
// 
// Create Date: 24.02.2024 22:03:32
// Design Name: 
// Module Name: RCA
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


module RippleCarryAdder(
output [3:0]S,
output Carry,
input [3:0]A,B,
input C0);
wire [2:0]C;
fulladder g1(S[0],C[0],A[0],B[0],C0);
fulladder g2(S[1],C[1],A[1],B[1],C[0]);
fulladder g3(S[2],C[2],A[2],B[2],C[1]);
fulladder g4(S[3],Carry,A[3],B[3],C[2]);
endmodule

//test bench for the Ripple Carry Adder
module RippleCarryAdder_tb;
reg A,B;
wire S;
wire Carry;
//instantiating design block
RippleCarryAdder uut(
.A(A),
.B(B),
.S(S),.Carry(Carry));
initial begin
A=4'b1001;
B=4'b1010;
# 10 
A=4'1100;
B=4'1111;
#10 $stop;
end
endmodule
