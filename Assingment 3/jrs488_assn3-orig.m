%ECES435 Assignment 3 - By Wanyu Li and John Seitz
close all; clear all; clc;
%% Part 1 - LSB Least Significant Bitplane Hiding

%Part 1 - 1st Task
P = imread('peppers.tif'); %Read in image as unit8
B = imread('baboon.tif'); %Read in image as unit8

P_Bitplane = get_bitplane(P,1); %extract 1st bitplane of image P, using function
B_Bitplane = get_bitplane(B,1); %extract 1st bitplane of image B, using function

figure;
imshow(P_Bitplane) %show bitplane

figure;
imshow(B_Bitplane) %show bitplane

%% Part 1 - 2nd Task
wmk1 = imread('LSBwmk1.tiff'); %Read in image as unit8
wmk2 = imread('LSBwmk2.tiff'); %Read in image as unit8
wmk3 = imread('LSBwmk3.tiff'); %Read in image as unit8

figure(1)

for I = 1:8
wmk1_Bitplane = get_bitplane(wmk1,I); %extract 1st bitplane of image P, using function
subplot(2,4,I)
imshow(wmk1_Bitplane) %show bitplane
end

figure(2)
for I = 1:8
wmk2_Bitplane = get_bitplane(wmk2,I); %extract 1st bitplane of image P, using function
subplot(2,4,I)
imshow(wmk2_Bitplane) %show bitplane
end

figure(3)

for I = 1:8
wmk3_Bitplane = get_bitplane(wmk3,I); %extract 1st bitplane of image P, using function
subplot(2,4,I)
imshow(wmk3_Bitplane) %show bitplane
end

%% Part 1 - 3rd Task
P = imread('peppers.tif'); %Read in image as unit8
B = imread('baboon.tif'); %Read in image as unit8

figure(1)
newimg = watermark(P,B,1);
imshow(newimg)

figure(2)
newimg = uint8(newimg);
imshow(newimg)
