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

module max_finding #(parameter w1=64) (
input signed [w1-1:0] num0,num1,num2,num3,num4,num5, num6, num7, num8, num9,
output reg [3:0] max_index
);

reg signed [w1-1:0] max_value;


  always @(*) begin
        max_value = num0; // Initialize max_value with the first input
        max_index = 4'd0; // Initialize index

        // Compare each number to find the maximum
        if (num1 > max_value) begin
            max_value = num1;
            max_index = 4'd1;
        end
        if (num2 > max_value) begin
            max_value = num2;
            max_index = 4'd2;
        end
        if (num3 > max_value) begin
            max_value = num3;
            max_index = 4'd3;
        end
        if (num4 > max_value) begin
            max_value = num4;
            max_index = 4'd4;
        end
        if (num5 > max_value) begin
            max_value = num5;
            max_index = 4'd5;
        end
        if (num6 > max_value) begin
            max_value = num6;
            max_index = 4'd6;
        end
        if (num7 > max_value) begin
            max_value = num7;
            max_index = 4'd7;
        end
        if (num8 > max_value) begin
            max_value = num8;
            max_index = 4'd8;
        end
        if (num9 > max_value) begin
            max_value = num9;
            max_index = 4'd9;
        end
    end


endmodule