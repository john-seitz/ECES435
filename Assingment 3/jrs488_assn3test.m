close all; clear all; clc;

P = imread('peppers.tif'); %Read in image as unit8
B = imread('baboon.tif'); %Read in image as unit8
Barb = imread('Barbara.bmp'); %Read in image as unit8



figure(1)
% newimg = watermark(P,Barb,[8 7], [1 2]);
newimg = watermark(P,Barb);
imshow(uint8(newimg))

figure(2)
test = get_bitplane(newimg,1);
imshow(test)

figure(3)
test = get_bitplane(newimg,2);
imshow(test)

figure(4)
test = get_bitplane(Barb,7);
imshow(test)

figure(5)
test = get_bitplane(Barb,8);
imshow(test)