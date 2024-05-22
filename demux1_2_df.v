`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2024 12:17:49
// Design Name: 
// Module Name: demux1_2_df
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


module demux1_2_df(
output I1,I0,
input A,S);
//wire Sbar;
assign I0=A&&(~S);
assign I1=A&&S;

endmodule
//testbench
module demux_tb;
reg A,S;
wire I1,I0;
demux1_2_df uut(
.A(A),
.S(S),
.I0(I0),
.I1(I1));
initial begin 
#10 A=1'b1;S=1'b0;
#10 A=1'b0;S=1'b0;
#10 A=1'b1;S=1'b1;
#10 A=1'b0;S=1'b1;
#10 $stop;
end 
endmodule

