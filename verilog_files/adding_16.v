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

module adding_16 #(parameter w1=21, parameter w2=27)(
input signed [w1-1:0] in1,in2,in3,in4,in5,in6, in7, in8,in9,in10,in11,in12,in13,in14, in15, in16,
output signed [w2-1:0] ou
    );
assign ou=in1+in2+in3+in4+in5+in6+in7+in8+in9+in10+in11+in12+in13+in14+in15+in16;
endmodule