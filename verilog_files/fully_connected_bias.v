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

module fully_connected_bias  #(parameter w1=64)(
input signed [w1-1:0] in1,in2, in3, in4, in5, in6, in7, in8, in9, in10,
input signed [5:0] b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,
output signed [w1-1:0] ou1,ou2, ou3, ou4, ou5, ou6, ou7, ou8, ou9, ou10

    );
    
 assign ou1=in1+b1;
  assign ou2=in2+b2;
   assign ou3=in3+b3;
    assign ou4=in4+b4; 
    assign ou5=in5+b5;
     assign ou6=in6+b6;
     assign ou7=in7+b7;
      assign ou8=in8+b8;
       assign ou9=in9+b9; 
       assign ou10=in10+b10;
endmodule
