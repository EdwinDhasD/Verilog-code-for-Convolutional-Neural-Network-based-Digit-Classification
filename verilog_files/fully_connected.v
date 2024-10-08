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

module fully_connected #(parameter w1=9, parameter w2=64, parameter w3=10, parameter w4=64)(
input clk,
input signed [w1-1:0] din, 
input rst,
output signed [w2-1:0] outp1,
output signed [w2-1:0] outp2,
output signed [w2-1:0] outp3,
output signed [w2-1:0] outp4,
output signed [w2-1:0] outp5,
output signed [w2-1:0] outp6,
output signed [w2-1:0] outp7,
output signed [w2-1:0] outp8,
output signed [w2-1:0] outp9,
output signed [w2-1:0] outp10,
output reg enb=1'b0
    );
    

    
reg [10:0] cou=11'd0;   
reg [10:0] cou1=11'd0;  
reg ena=1'b0;
wire signed [w3-1:0] douta, doutb, doutc, doutd, doute, doutf, doutg, douth,douti, doutj;
reg signed [w1-1:0] din1, din2,din3;

reg signed [w3-1:0] douta1,doutb1,doutc1,doutd1,doute1,doutf1,doutg1,douth1,douti1,doutj1;
reg signed [w4-1:0] tempa=0;
reg signed [w4-1:0] tempb=0;
reg signed [w4-1:0] tempc=0;
reg signed [w4-1:0] tempd=0;
reg signed [w4-1:0] tempe=0;
reg signed [w4-1:0] tempf=0;
reg signed [w4-1:0] tempg=0;
reg signed [w4-1:0] temph=0;
reg signed [w4-1:0] tempi=0;
reg signed [w4-1:0] tempj=0;
reg [10:0] adr;
 
 assign outp1=tempa;
 assign outp2=tempb;
 assign outp3=tempc;
 assign outp4=tempd;
 assign outp5=tempe;
 assign outp6=tempf;
 assign outp7=tempg;
 assign outp8=temph;
 assign outp9=tempi;
 assign outp10=tempj;
 
weights_layer1 first(clk,ena,adr,douta);
weights_layer2 second(clk,ena,adr,doutb);
weights_layer3 three(clk,ena,adr,doutc);
weights_layer4 four(clk,ena,adr,doutd);
weights_layer5 five(clk,ena,adr,doute);
weights_layer6 six(clk,ena,adr,doutf);
weights_layer7 seven(clk,ena,adr,doutg);
weights_layer8 eight(clk,ena,adr,douth);
weights_layer9 nine(clk,ena,adr,douti);
weights_layer10 ten(clk,ena,adr,doutj);




always@(posedge clk)
begin
din1<=din;
din2<=din1;
din3<=din2;
douta1<=douta;
doutb1<=doutb;
doutc1<=doutc;
doutd1<=doutd;
doute1<=doute;
doutf1<=doutf;
doutg1<=doutg;
douth1<=douth;
douti1<=douti;
doutj1<=doutj;

if (~rst)
begin


if (cou==12'd1568)
begin
ena<=1'b0;
cou<=12'd1568;
end
else
begin
cou<=cou+1'b1;
adr<=cou;
ena<=1'b1;
end


if (cou1<12'd3)
begin
cou1<=cou1+1'b1;
enb<=1'b0;
end
else if (cou1==12'd1571)
begin
cou1<=12'd1571;
enb<=1'b1;
tempa<=tempa;
tempb<=tempb;
tempc<=tempc;
tempd<=tempd;
tempe<=tempe;
tempf<=tempf;
tempg<=tempg;
temph<=temph;
tempi<=tempi;
tempj<=tempj;


end
else
begin
enb<=1'b0;
tempa<=douta1*din3+tempa;
tempb<=doutb1*din3+tempb;
tempc<=doutc1*din3+tempc;
tempd<=doutd1*din3+tempd;
tempe<=doute1*din3+tempe;
tempf<=doutf1*din3+tempf;
tempg<=doutg1*din3+tempg;
temph<=douth1*din3+temph;
tempi<=douti1*din3+tempi;
tempj<=doutj1*din3+tempj;
cou1<=cou1+1'b1;
end

end
end






endmodule
