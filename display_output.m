clc;
clear all;
close all;

pat1='./data/conv1_';
pat2='./data/conv2_';
pat3='./data/conv3_';

for i=1:8
d1 = fopen(strcat(pat1,num2str(i),'.txt'), 'r');
im = textscan(d1, '%f');  
R=im{1}(1:784);
m1=min(R(R>0));
im2=(reshape(R',[28 28]))';
subplot(2,4,i);
imshow(im2-m1,[]);
fclose(d1);
end
sgtitle('Convolutional-1 output');
figure;
for i=1:16
d1 = fopen(strcat(pat2,num2str(i),'.txt'), 'r');
im = textscan(d1, '%f');  
R=im{1}(1:196);
m1=min(R(R>0));
im2=(reshape(R',[14 14]))';
subplot(4,4,i);
imshow(im2-m1,[]);
fclose(d1);
end
sgtitle('Convolutional-2 output');

figure;
for i=1:32
d1 = fopen(strcat(pat3,num2str(i),'.txt'), 'r');
im = textscan(d1, '%f');  
R=im{1}(1:49);
m1=min(R(R>0));
im2=(reshape(R',[7 7]))';
subplot(4,8,i);
imshow(im2-m1,[]);
fclose(d1);
end
sgtitle('Convolutional-3 output');