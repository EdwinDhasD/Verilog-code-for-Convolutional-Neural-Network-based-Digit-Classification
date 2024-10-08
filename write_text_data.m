clc;
clear all;
close all;

[x,y]=uigetfile('*.png');
z=strcat(y,x);
f=imread(z);


fileID = fopen('.\data\data.txt', 'w');


g=reshape(f',[1 784]);

fprintf(fileID, '%d\n', g); % Format to two decimal places

% Close the file
fclose(fileID);
disp('Image converted to text data');