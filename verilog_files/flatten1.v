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

module flatten1 #(parameter w1=9)(
input clk,
input rst,
input signed [w1-1:0] in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14,in15,in16,in17,in18,in19,in20,in21,in22,in23,in24,in25,in26,in27,in28,in29,in30,in31,in32,
output reg en,
output reg signed [w1-1:0] r
 );
 
 reg [w1-1:0] mem[1567:0];
 reg [12:0] cou;
 reg [10:0] cou1;
 wire [10:0] data;
 reg En;
 integer i;
// reg signed [8:0] r;
initial
begin
cou=13'd0;
En=1'b0;
cou1=13'd0;
for (i=0; i<1568; i=i+1)
begin
mem[i]=9'd0;
end
end

always@(posedge clk)
begin
if (~rst)
begin
if (cou<13'd50)
begin
mem[cou+12'd0]<=in1;
mem[cou+12'd49]<=in2;
mem[cou+12'd98]<=in3;
mem[cou+12'd147]<=in4;
mem[cou+12'd196]<=in5;
mem[cou+12'd245]<=in6;
mem[cou+12'd294]<=in7;
mem[cou+12'd343]<=in8;
mem[cou+12'd392]<=in9;
mem[cou+12'd441]<=in10;
mem[cou+12'd490]<=in11;
mem[cou+12'd539]<=in12;
mem[cou+12'd588]<=in13;
mem[cou+12'd637]<=in14;
mem[cou+12'd686]<=in15;
mem[cou+12'd735]<=in16;
mem[cou+12'd784]<=in17;
mem[cou+12'd833]<=in18;
mem[cou+12'd882]<=in19;
mem[cou+12'd931]<=in20;
mem[cou+12'd980]<=in21;
mem[cou+12'd1029]<=in22;
mem[cou+12'd1078]<=in23;
mem[cou+12'd1127]<=in24;
mem[cou+12'd1176]<=in25;
mem[cou+12'd1225]<=in26;
mem[cou+12'd1274]<=in27;
mem[cou+12'd1323]<=in28;
mem[cou+12'd1372]<=in29;
mem[cou+12'd1421]<=in30;
mem[cou+12'd1470]<=in31;
mem[cou+12'd1519]<=in32;

cou<=cou+1'd1;
end
else 
begin
cou<=13'd50;
r<=mem[data];
end
end
end



Rom1 index(clk,En,cou1-11'd49-1'b1,data);
always@(posedge clk)
begin
if(~rst)
begin
en<=En;
if (cou1>11'd49 && cou1<11'd1617)
begin
En<=1'b1;
cou1=cou1+1'b1;
end
else if (cou1<=11'd49)
begin
En<=1'b0;
cou1=cou1+1'b1;
end
else
begin
En<=1'b0;
cou1<=11'd1617;
end
end



end

endmodule


