`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.04.2024 20:07:21
// Design Name: 
// Module Name: t_ff
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


module t_ff(
input clk,rst,T,
output reg q,
output qbar);
always@(posedge clk)
begin 
if(rst)
q<=0;
end
else begin 
case(T)
1'b0:{q}={q};
1'b1:{q}={~q};
endcase
end
end
assign qbar<=~q;
endmodule
