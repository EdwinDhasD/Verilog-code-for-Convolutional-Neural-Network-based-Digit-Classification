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

module conv3#(parameter W1 = 9,parameter W2 = 10,parameter W3 = 21)(
input clk,
input rst,
input signed [W1-1:0] inp,
output reg signed [W3-1:0] oup,
input signed [W2-1:0] k1,k2,k3,k4,k5,k6,k7,k8,k9,
output reg En
);
wire signed [W1-1:0] R1,R2,R3,R4,R5,R6,R7,R8,R9;
localparam M1=30;
localparam M2=756;
localparam M3=814;
reg [1:0] x;
reg [4:0] y;
reg signed [W1-1:0] mem [2:0] [8:0];
reg [9:0] cou;
reg signed [W2-1:0] a1,a2,a3,a4,a5,a6,a7,a8,a9;
reg [5:0] n;
integer i,j;


initial
begin
       En=1'b0;
       x=2'd1;
       y=5'd1;
       n=5'd0;
       cou<=10'd0;
    for (i=0; i<3; i=i+1)
    begin
        for (j=0; j<9; j=j+1)
        begin
        mem[i][j]=9'd0;
        end
    end
    end
    
assign R1=mem[0][n];
assign R2=mem[0][n+1];
assign R3=mem[0][n+2];
assign R4=mem[1][n];
assign R5=mem[1][n+1];
assign R6=mem[1][n+2];
assign R7=mem[2][n];
assign R8=mem[2][n+1];
assign R9=mem[2][n+2];
always@(posedge clk)
begin
if (rst==1'b0)
begin
    if (cou<10'd49)
    begin
    mem[x][y]<=inp;
     if (cou==1'b1)
       begin
       a1<=k1; a2<=k2; a3<=k3; a4<=k4; a5<=k5; a6<=k6; a7<=k7; a8<=k8; a9<=k9;
       end
    end
    else 
    begin
    //mem[x][y]<=inp;
    mem [2][y]<=9'd0;
    end 

    
    if (cou>10'd9 && cou<10'd59)
    begin
    oup<=a1*R1+a2*R2+a3*R3+a4*R4+a5*R5+a6*R6+a7*R7+a8*R8+a9*R9;
    En<=1'b1;
    if (y==1)
        n<=5'd5;
        else if (y==2)
        n<=5'd6;
        else
        n<=y-3;
    end
    else
    begin
    En<=1'b0;
    oup<=0;
    end
    
    

if (y==5'd3 && cou>10'd12)
begin
a1<=a7;
a2<=a8;
a3<=a9;
a4<=a1;
a5<=a2;
a6<=a3;
a7<=a4;
a8<=a5;
a9<=a6;
end

if (y==5'd7)
begin
y<=1;
if (x==2'd2)
begin
x<=2'd0;
end
else
x<=x+1'b1;
end
else
begin
y<=y+1'b1;
end
if (cou<10'd59)
begin
cou<=cou+1'b1;
end
end
end


endmodule
