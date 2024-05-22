`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2024 14:07:17
// Design Name: 
// Module Name: demux1_2_behav
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


module demux1_2_behav(
output reg I1,I0,
input A,S);
always @(S)
begin
 if(S==1'b0)
  begin 
  I0=A;
  I1=1'b0;
  end
 else
  begin 
  I0=1'b0;
  I1=A;
  end
 end
  endmodule
  
 module demux_tb;
  reg A,S;
  wire I0,I1;
  demux1_2_behav uut(
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
