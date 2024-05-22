`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2024 11:45:07
// Design Name: 
// Module Name: demux_1x4
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


module demux_1x4(
output I3,I2,I1,I0,
input A,S1,S0);
wire S1bar,S0bar;
not g1(S1bar,S1);
not g2(S0bar,S0);
and g3(I0,A,S1bar,S0bar);
and g4(I1,A,S1bar,S0);
and g5(I2,A,S1,S0bar);
and g6(I3,A,S1,S0);
endmodule


//testbench
module demux_tb;
reg A,S1,S0;
wire I3,I2,I1,I0;
demux_1x4 uut(
.A(A),
.S1(S1),
.S0(S0),
.I0(I0),
.I1(I1),
.I2(I2),
.I3(I3));
initial begin
#10 A=1'b0;S1=1'b0;S0=1'b0;
#10 A=1'b1;S1=1'b0;S0=1'b0;
#10 A=1'b0;S1=1'b0;S0=1'b1;
#10 A=1'b1;S1=1'b0;S0=1'b1;
#10 A=1'b0;S1=1'b1;S0=1'b0;
#10 A=1'b1;S1=1'b1;S0=1'b0;
#10 A=1'b0;S1=1'b1;S0=1'b1;
#10 A=1'b1;S1=1'b1;S0=1'b1;
#10 $stop;
end
endmodule




