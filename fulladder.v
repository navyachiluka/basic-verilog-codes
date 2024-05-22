`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.02.2024 15:14:52
// Design Name: 
// Module Name: fulladder
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



module fulladder(
output s1,carryout,
input a1,b1,c1 );
wire w1,w2,w3;
halfadder g1(w1,w2,a1,b1);
halfadder g2(s1,w3,w1,c1);
or g3(carryout,w2,w3);
endmodule


module halfadder(sum,carry,a,b);
input a,b;
output sum,carry;
xor g1(sum,a,b);
and g2(carry,a,b);
endmodule


//test bench for the halfadder 
// individually also we can implement

module halfadder_tb;
reg a;
reg b;
wire sum;
wire carry;
half_adder uut(.a(a),.b(b),.sum(sum),.carry(carry));
initial begin 
#10 a=1'b0;b=1'b0;
#10 a=1'b0;b=1'b1;
#10 a=1'b1;b=1'b0;
#10 a=1'b1;b=1'b1;
#10 $stop;
end
endmodule

