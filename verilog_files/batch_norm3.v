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

module batch_norm3 #(parameter w1=27, parameter w2=18, parameter w3=50, parameter w4=9)(
input signed [w1-1:0] din,
input signed [w2-1:0] delta,
input signed [w2-1:0] mu,
input signed [w2-1:0] beta,
output signed [w4-1:0] oup
    );
    
wire signed [31-1:0] ou1;
wire signed [29-1:0] o1;
wire signed [49-1:0] o2;
wire signed [50-1:0] o3;
assign o1=(din-mu);
assign o2=delta*o1;
assign o3=o2+beta;


 assign oup={ou1[30], ou1[7:0]};
division1 div(o3, ou1);
 endmodule
 
 
