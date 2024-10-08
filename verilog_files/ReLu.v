`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Dr.EDWIN DHAS D
// 
// Create Date: 02.10.2024 13:11:01
// Design Name: 
// Module Name: adding_8
// Project Name: CNN-based digit classification 
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

module ReLu #(parameter w1=9)(
input signed [w1-1:0] din,
output reg signed [w1-1:0] dout
    );

always @(*)
begin
if (din>0)
dout<=din;
else
dout<=0;
end
endmodule
