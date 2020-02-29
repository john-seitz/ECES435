%ECES435 Assignment 3 Part 1 - By Wanyu Li and John Seitz
close all; clear all; clc;

%% Part 1 - 1st Task - LSB Least Significant Bitplane Hiding

%Part 1 - 1st Task
P = imread('peppers.tif'); %Read in image as unit8
B = imread('baboon.tif'); %Read in image as unit8

figure (1);
for I = 1:8
P_Bitplane = get_bitplane(P,I); %extract 1st bitplane of image P, using function
subplot(2,4,I)
imshow(P_Bitplane) %show bitplane
title (['Bitplane = ',sprintf('%d',I)])
end

figure (2);
for I = 1:8
B_Bitplane = get_bitplane(B,I); %extract 1st bitplane of image P, using function
subplot(2,4,I)
imshow(B_Bitplane) %show bitplane
title (['Bitplane = ',sprintf('%d',I)])
end

%% Part 1 - 2nd Task - Examine bitplanes of images
wmk1 = imread('LSBwmk1.tiff'); %Read in image as unit8
wmk2 = imread('LSBwmk2.tiff'); %Read in image as unit8
wmk3 = imread('LSBwmk3.tiff'); %Read in image as unit8



figure(3)

for I = 1:8
wmk1_Bitplane = get_bitplane(wmk1,I); %extract 1st bitplane of image P, using function
subplot(2,4,I)
imshow(wmk1_Bitplane) %show bitplane
title (['Bitplane = ',sprintf('%d',I)])
end

figure(4)
for I = 1:8
wmk2_Bitplane = get_bitplane(wmk2,I); %extract 1st bitplane of image P, using function
subplot(2,4,I)
imshow(wmk2_Bitplane) %show bitplane
title (['Bitplane = ',sprintf('%d',I)])
end

figure(5)

for I = 1:8
wmk3_Bitplane = get_bitplane(wmk3,I); %extract 1st bitplane of image P, using function
subplot(2,4,I)
imshow(wmk3_Bitplane) %show bitplane
title (['Bitplane = ',sprintf('%d',I)])
end


%% Part 1 - 3rd Task - Embed one image bitplanes into another's

Pep = imread('peppers.tif'); %Read in image as unit8
Bab = imread('baboon.tif'); %Read in image as unit8
Barb = imread('Barbara.bmp'); %Read in image as unit8


%Use watermark function to put the bitplanes of Barbera into the bitplanes
%of Peppers


figure(6)


subplot(2,4,1)
newimg = watermark2(Pep,Barb,1,1); 
imshow(newimg)

subplot(2,4,2)
newimg = watermark2(newimg,Barb,2,2);
imshow(newimg)

subplot(2,4,3)
newimg = watermark2(newimg,Barb,3,3);
imshow(newimg)

subplot(2,4,4)
newimg = watermark2(newimg,Barb,4,4);
imshow(newimg)

subplot(2,4,5)
newimg = watermark2(newimg,Barb,5,5);
imshow(newimg)

subplot(2,4,6)
newimg = watermark2(newimg,Barb,6,6);
imshow(newimg)

subplot(2,4,7)
newimg = watermark2(newimg,Barb,7,7);
imshow(newimg)

subplot(2,4,8)
newimg = watermark2(newimg,Barb,8,8);
imshow(newimg)

sgtitle('"Barbara" embeded into "Peppers"')
%Do the same for the Baboon Image
figure(7)

subplot(2,4,1)
newimg = watermark2(Bab,Barb,1,1);
imshow(newimg)

subplot(2,4,2)
newimg = watermark2(newimg,Barb,2,2);
imshow(newimg)

subplot(2,4,3)
newimg = watermark2(newimg,Barb,3,3);
imshow(newimg)

subplot(2,4,4)
newimg = watermark2(newimg,Barb,4,4);
imshow(newimg)

subplot(2,4,5)
newimg = watermark2(newimg,Barb,5,5);
imshow(newimg)

subplot(2,4,6)
newimg = watermark2(newimg,Barb,6,6);
imshow(newimg)

subplot(2,4,7)
newimg = watermark2(newimg,Barb,7,7);
imshow(newimg)

subplot(2,4,8)
newimg = watermark2(newimg,Barb,8,8);
imshow(newimg)

sgtitle('"Barbara" embeded into "Baboon"')