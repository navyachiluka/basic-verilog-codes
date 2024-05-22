`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.03.2024 19:24:52
// Design Name: 
// Module Name: mux4x1
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

//4x1 mux in structural
module mux4x1(
output y,
input S1,S0,I0,I1,I2,I3);
wire S1bar,S0bar,w1,w2,w3,w4;
not g1(S1bar,S1);
not g2(S0bar,S0);
and g3(w1,I0,S1bar,S0bar);
and g4(w2,I1,S0,S1bar);
and g5(w3,I2,S0bar,S1);
and g6(w4,I3,S1,S0);
or g7(y,w1,w2,w3,w4);
endmodule
//test bench
module mux4x1_tb;
reg S0,S1,I0,I1,I2,I3;
wire y;
mux4x1 uut(
.S0(S0),
.S1(S1),
.I0(I0),
.I1(I1),
.I2(I2),
.I3(I3),
.y(y));
initial 
begin
#10 S0=1'b0;S1=1'b0;I0=1'b1;I1=1'b0;I2=1'b0;I3=1'b0;
#10 S0=1'b0;S1=1'b1;I0=1'b0;I1=1'b1;I2=1'b0;I3=1'b0;
#10 S0=1'b1;S1=1'b0;I0=1'b0;I1=1'b0;I2=1'b1;I3=1'b0;
#10 S0=1'b1;S1=1'b1;I0=1'b0;I1=1'b0;I2=1'b0;I3=1'b1;
#10 $stop;
end

endmodule



















