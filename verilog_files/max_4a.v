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

module max_4a #(parameter w1=9)(
input signed [w1-1:0] num0, num1, num2, num3,
output reg signed [w1-1:0] max_value
    );

//reg [7:0] max_value;

always@(*)
begin
max_value=num0;
if (num1>max_value)
max_value=num1;

if (num2>max_value)
max_value=num2;

if (num3>max_value)
max_value=num3;


end
endmodule
