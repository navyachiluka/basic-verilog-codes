`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.03.2024 18:47:29
// Design Name: 
// Module Name: mux2x1
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


module mux2x1_struct(
output y,
input S,I0,I1 );
wire w1,w2,w3;
not g0(w1,S);
and g1(w2,w1,I0);
and g2(w3,S,I1);
or g3(y,w3,w2);
endmodule
//test bench
module mux2x1_struct_tb;
reg S,I0,I1;
wire y;
mux2x1_struct uut(
.S(S),
.I0(I0),
.I1(I1),
.y(y));
initial 
begin
#10 
S=1'b0;I0=1'b1;I1=1'b0;
#10 
S=1'b0;I0=1'b0;I1=1'b0;
#10 
S=1'b1;I0=1'b0;I1=1'b1;
#10 
S=1'b1;I0=1'b0;I1=1'b0;
#10 $stop;
end
endmodule













