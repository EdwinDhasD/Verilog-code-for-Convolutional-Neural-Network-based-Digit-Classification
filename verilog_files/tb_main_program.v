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


module tb_main_program(

    );
    
reg clk=0;
wire clk_out;
reg rst;
reg signed [8:0] inp;
wire signed [15:0] oup;
reg signed [7:0] k1,k2,k3,k4,k5,k6,k7,k8,k9;
reg [8:0] memory[783:0];
reg [41:0] memory1[783:0];
wire [3:0] ma;
wire signed [8:0] ouv;
wire signed [8:0] ouv1,ouv2,ouv3,ouv4,ouv5,ouv6,ouv7,ouv8,ouv9,ouv10,ouv11,ouv12,ouv13,ouv14,ouv15,ouv16,ouv17,ouv18,ouv19,ouv20,ouv21,ouv22,ouv23,ouv24,ouv25,ouv26,ouv27,ouv28,ouv29,ouv30,ouv31,ouv32;
integer file,file1,file2,file3,file4,file5,file6,file7,file8,file9,file10,file11,file12,file13,file14,file15,file16,file17,file18,file19,file20,file21,file22,file23,file24,file25,file26,file27,file28,file29,file30,file31,file32,file33,file34,file35,file36,file37,file38,file39,file40,file41,file42,file43,file44,file45,file46,file47,file48,file49,file50,file51,file52,file53,file54,file55,file56;
integer i;
integer j;
reg rst1;
reg [10:0] cou1;
wire En1,En2,En3, En4;
wire clk_out1,clk_out2,clk_out3;
wire signed [20:0] c1,c2,c3,c4,c5,c6,c7,c8;
wire signed [23:0] c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24;
wire signed [26:0] c25,c26,c27,c28,c29,c30,c31,c32,c33,c34,c35,c36,c37,c38,c39,c40,c41,c42,c43,c44,c45,c46,c47,c48,c49,c50,c51,c52,c53,c54,c55,c56;



always #50 clk=~clk;
initial
begin
rst=1'b1;
inp=9'd0;
//k1=1225;
//k2=846;
//k3=-2073;
//k4=2065;
//k5=-1660;
//k6=-754;
//k7=-91;
//k8=-1709;
//k9=-1634;
k1=1;
k2=1;
k3=1;
k4=1;
k5=1;
k6=1;
k7=1;
k8=1;
k9=1;
j=0;
file= $fopen("H:/CNN_based_digit_classification/data/data.txt","r");
file1= $fopen("H:/CNN_based_digit_classification/data/conv1_1.txt","r+");
file2= $fopen("H:/CNN_based_digit_classification/data/conv1_2.txt","r+");
file3= $fopen("H:/CNN_based_digit_classification/data/conv1_3.txt","r+");
file4= $fopen("H:/CNN_based_digit_classification/data/conv1_4.txt","r+");
file5= $fopen("H:/CNN_based_digit_classification/data/conv1_5.txt","r+");
file6= $fopen("H:/CNN_based_digit_classification/data/conv1_6.txt","r+");
file7= $fopen("H:/CNN_based_digit_classification/data/conv1_7.txt","r+");
file8= $fopen("H:/CNN_based_digit_classification/data/conv1_8.txt","r+");
file9= $fopen("H:/CNN_based_digit_classification/data/conv2_1.txt","r+");
file10= $fopen("H:/CNN_based_digit_classification/data/conv2_2.txt","r+");
file11= $fopen("H:/CNN_based_digit_classification/data/conv2_3.txt","r+");
file12= $fopen("H:/CNN_based_digit_classification/data/conv2_4.txt","r+");
file13= $fopen("H:/CNN_based_digit_classification/data/conv2_5.txt","r+");
file14= $fopen("H:/CNN_based_digit_classification/data/conv2_6.txt","r+");
file15= $fopen("H:/CNN_based_digit_classification/data/conv2_7.txt","r+");
file16= $fopen("H:/CNN_based_digit_classification/data/conv2_8.txt","r+");
file17= $fopen("H:/CNN_based_digit_classification/data/conv2_9.txt","r+");
file18= $fopen("H:/CNN_based_digit_classification/data/conv2_10.txt","r+");
file19= $fopen("H:/CNN_based_digit_classification/data/conv2_11.txt","r+");
file20= $fopen("H:/CNN_based_digit_classification/data/conv2_12.txt","r+");
file21= $fopen("H:/CNN_based_digit_classification/data/conv2_13.txt","r+");
file22= $fopen("H:/CNN_based_digit_classification/data/conv2_14.txt","r+");
file23= $fopen("H:/CNN_based_digit_classification/data/conv2_15.txt","r+");
file24= $fopen("H:/CNN_based_digit_classification/data/conv2_16.txt","r+");

file25= $fopen("H:/CNN_based_digit_classification/data/conv3_1.txt","r+");
file26= $fopen("H:/CNN_based_digit_classification/data/conv3_2.txt","r+");
file27= $fopen("H:/CNN_based_digit_classification/data/conv3_3.txt","r+");
file28= $fopen("H:/CNN_based_digit_classification/data/conv3_4.txt","r+");
file29= $fopen("H:/CNN_based_digit_classification/data/conv3_5.txt","r+");
file30= $fopen("H:/CNN_based_digit_classification/data/conv3_6.txt","r+");
file31= $fopen("H:/CNN_based_digit_classification/data/conv3_7.txt","r+");
file32= $fopen("H:/CNN_based_digit_classification/data/conv3_8.txt","r+");
file33= $fopen("H:/CNN_based_digit_classification/data/conv3_9.txt","r+");
file34= $fopen("H:/CNN_based_digit_classification/data/conv3_10.txt","r+");
file35= $fopen("H:/CNN_based_digit_classification/data/conv3_11.txt","r+");
file36= $fopen("H:/CNN_based_digit_classification/data/conv3_12.txt","r+");
file37= $fopen("H:/CNN_based_digit_classification/data/conv3_13.txt","r+");
file38= $fopen("H:/CNN_based_digit_classification/data/conv3_14.txt","r+");
file39= $fopen("H:/CNN_based_digit_classification/data/conv3_15.txt","r+");
file40= $fopen("H:/CNN_based_digit_classification/data/conv3_16.txt","r+");

file41= $fopen("H:/CNN_based_digit_classification/data/conv3_17.txt","r+");
file42= $fopen("H:/CNN_based_digit_classification/data/conv3_18.txt","r+");
file43= $fopen("H:/CNN_based_digit_classification/data/conv3_19.txt","r+");
file44= $fopen("H:/CNN_based_digit_classification/data/conv3_20.txt","r+");
file45= $fopen("H:/CNN_based_digit_classification/data/conv3_21.txt","r+");
file46= $fopen("H:/CNN_based_digit_classification/data/conv3_22.txt","r+");
file47= $fopen("H:/CNN_based_digit_classification/data/conv3_23.txt","r+");
file48= $fopen("H:/CNN_based_digit_classification/data/conv3_24.txt","r+");
file49= $fopen("H:/CNN_based_digit_classification/data/conv3_25.txt","r+");
file50= $fopen("H:/CNN_based_digit_classification/data/conv3_26.txt","r+");
file51= $fopen("H:/CNN_based_digit_classification/data/conv3_27.txt","r+");
file52= $fopen("H:/CNN_based_digit_classification/data/conv3_28.txt","r+");
file53= $fopen("H:/CNN_based_digit_classification/data/conv3_29.txt","r+");
file54= $fopen("H:/CNN_based_digit_classification/data/conv3_30.txt","r+");
file55= $fopen("H:/CNN_based_digit_classification/data/conv3_31.txt","r+");
file56= $fopen("H:/CNN_based_digit_classification/data/conv3_32.txt","r+");
for (i=0; i<784;i=i+1)
begin
$fscanf(file,"%d",memory[i]);
end
#2050
rst<=1'b0;

//#30200000
//$fclose(file);
//$fclose(file1);


end

always@(posedge clk)
begin
rst1<=rst;
//inp=inp+1'b1;
if(~rst)
begin
inp<=memory[j];
j<=j+1;
end
end

always@(posedge clk)
begin
if (En4==1'b1)
begin
$display("THE CLASSIFIED RESULT IS DIGIT: %d",ma);
$fclose(file);
$fclose(file1);
$fclose(file2);
$fclose(file3);
$fclose(file4);
$fclose(file5);
$fclose(file6);
$fclose(file7);
$fclose(file8);
$fclose(file9);
$fclose(file10);
$fclose(file11);
$fclose(file12);
$fclose(file13);
$fclose(file14);
$fclose(file15);
$fclose(file16);
$fclose(file17);
$fclose(file18);
$fclose(file19);
$fclose(file20);
$fclose(file21);
$fclose(file22);
$fclose(file23);
$fclose(file24);
$fclose(file25);
$fclose(file26);
$fclose(file27);
$fclose(file28);
$fclose(file29);
$fclose(file30);
$fclose(file31);
$fclose(file32);
$fclose(file33);
$fclose(file34);
$fclose(file35);
$fclose(file36);
$fclose(file37);
$fclose(file38);
$fclose(file39);
$fclose(file40);
$fclose(file41);
$fclose(file42);
$fclose(file43);
$fclose(file44);
$fclose(file45);
$fclose(file46);
$fclose(file47);
$fclose(file48);
$fclose(file49);
$fclose(file50);
$fclose(file51);
$fclose(file52);
$fclose(file53);
$fclose(file54);
$fclose(file55);
$fclose(file56);

$finish;
end
end
always@(posedge clk)
begin
if(En1)
begin          
$fwrite(file1,"%d\n",c1);       
$fwrite(file2,"%d\n",c2);   
$fwrite(file3,"%d\n",c3);   
$fwrite(file4,"%d\n",c4);   
$fwrite(file5,"%d\n",c5);      
$fwrite(file6,"%d\n",c6);   
$fwrite(file7,"%d\n",c7);
$fwrite(file8,"%d\n",c8);   
end                    
end  

always@(posedge clk_out1)
begin
if(En2==1'b1)
begin          
$fwrite(file9,"%d\n",c9);       
$fwrite(file10,"%d\n",c10);   
$fwrite(file11,"%d\n",c11);   
$fwrite(file12,"%d\n",c12);   
$fwrite(file13,"%d\n",c13);      
$fwrite(file14,"%d\n",c14);   
$fwrite(file15,"%d\n",c15);
$fwrite(file16,"%d\n",c16); 

$fwrite(file17,"%d\n",c17);       
$fwrite(file18,"%d\n",c18);   
$fwrite(file19,"%d\n",c19);   
$fwrite(file20,"%d\n",c20);   
$fwrite(file21,"%d\n",c21);      
$fwrite(file22,"%d\n",c22);   
$fwrite(file23,"%d\n",c23);
$fwrite(file24,"%d\n",c24);   
end                    
end  

always@(posedge clk_out2)
begin
if(En3==1'b1)
begin          
$fwrite(file25,"%d\n",c25);       
$fwrite(file26,"%d\n",c26);   
$fwrite(file27,"%d\n",c27);   
$fwrite(file28,"%d\n",c28);   
$fwrite(file29,"%d\n",c29);      
$fwrite(file30,"%d\n",c30);   
$fwrite(file31,"%d\n",c31);
$fwrite(file32,"%d\n",c32); 

$fwrite(file33,"%d\n",c33);       
$fwrite(file34,"%d\n",c34);   
$fwrite(file35,"%d\n",c35);   
$fwrite(file36,"%d\n",c36);   
$fwrite(file37,"%d\n",c37);      
$fwrite(file38,"%d\n",c38);   
$fwrite(file39,"%d\n",c39);
$fwrite(file40,"%d\n",c40);

$fwrite(file41,"%d\n",c41);       
$fwrite(file42,"%d\n",c42);   
$fwrite(file43,"%d\n",c43);   
$fwrite(file44,"%d\n",c44);   
$fwrite(file45,"%d\n",c45);      
$fwrite(file46,"%d\n",c46);   
$fwrite(file47,"%d\n",c47);
$fwrite(file48,"%d\n",c48); 

$fwrite(file49,"%d\n",c49);       
$fwrite(file50,"%d\n",c50);   
$fwrite(file51,"%d\n",c51);   
$fwrite(file52,"%d\n",c52);   
$fwrite(file53,"%d\n",c53);      
$fwrite(file54,"%d\n",c54);   
$fwrite(file55,"%d\n",c55);
$fwrite(file56,"%d\n",c56);   
end                    
end  
//conv1 circuit(clk,rst1, inp, oup, k1,k2,k3,k4,k5,k6,k7,k8,k9, En);


//main_program edwin(clk,rst1,inp,ouv1,ouv2,ouv3,ouv4,ouv5,ouv6,ouv7,ouv8,ouv9,ouv10,ouv11,ouv12,ouv13,ouv14,ouv15,ouv16,ouv17,ouv18,ouv19,ouv20,ouv21,ouv22,ouv23,ouv24,ouv25,ouv26	,ouv27,ouv28,ouv29,ouv30,ouv31,ouv32,En,clk_out);

main_program digit_classification(clk,rst1,inp,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,c31,c32,c33,c34,c35,c36,c37,c38,c39,c40,c41,c42,c43,c44,c45,c46,c47,c48,c49,c50,c51,c52,c53,c54,c55,c56,En1,En2,En3,En4,clk_out1,clk_out2,ma);


endmodule
