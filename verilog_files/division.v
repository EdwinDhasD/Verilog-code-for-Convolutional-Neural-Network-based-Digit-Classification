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

module division (
    input signed [41:0] dividend,    // Input dividend (42-bit signed)
    output reg signed [21:0] quotient  // Output quotient (21-bit signed)
);


reg  [40:0] mag;
reg signed [40:0] num1;
reg signed [40:0] num2;
reg [19:0] balance;

reg signed [1:0] s;




always@(*) begin

        if (dividend < 0) begin

            mag = -dividend; // Negate if negative
            s=-1;
        end else begin
            mag = dividend;  // Output as is if positive
            s=1;
        end
num1 = mag >>> 20;
if (num1>0)
balance=mag-1048576*num1;
else
balance=mag;

if (balance>524287)
begin
 num2=num1+1'b1;
end
else
num2=num1;
quotient=s*num2;
end



    
    
 
     
    
    
endmodule
