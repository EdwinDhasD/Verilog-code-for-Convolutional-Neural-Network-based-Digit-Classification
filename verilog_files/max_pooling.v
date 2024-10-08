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

module max_pooling #(parameter w1=9)(
input clk,
input signed [w1-1:0] din,
input rst,
output reg signed [w1-1:0] dout1,
output reg En1=1'b0
    );
wire [w1-1:0] num0,num1,num2, num3;
reg [w1-1:0] mem [1:0][27:0];
wire signed [w1-1:0] dout;
reg  [1:0]i;
reg [4:0] j;
reg x;
reg [4:0] y;
reg [4:0] n;
reg [4:0] n1;
reg En;
reg [10:0] cou1=11'd0;
reg[10:0] cou=11'd0;
initial
begin
x=1'b0;
y=5'd0;
for (i=0; i<2; i=i+1)
begin
for (j=0; j<28; j=j+1)
begin
mem[i][j]=9'd0;
end
end

end

max_4 cir1(mem[0][n], mem[0][n1], mem[1][n], mem[1][n1],dout);

assign num0=mem[0][n];
assign num1=mem[0][n1];
assign num2=mem[1][n];
assign num3=mem[1][n1];

always@(posedge clk)
begin
if (~rst)
begin
mem[x][y]<=din;
cou<=cou+1'b1;

if (y==5'd27)
begin
y<=5'd0;
if (x==1'd1)
x<=1'b0;
else
x<=1'b1;
end
else
begin
y<=y+1;
end

//if(cou>10'd29)
//begin
if(y==0)
begin
n<=5'd26;
n1<=5'd27;
end
else if(y==1)
begin
n<=5'd27;
n1<=5'd0;
end
else
begin
n<=y-2;
n1<=y-1;
end


//end

if (cou>10'd27)
begin
if(x==0 && y<2)
En<=1'b1;
else if(x==1 && y>1)
En<=1'b1;
else
En<=1'b0;
end
//&& cou1<11'd196
if(En==1'b1)
begin
En1<=~En1;
dout1<=dout;
if (En1==1'b1)
cou1<=cou1+1'b1;

end

end
end






endmodule
