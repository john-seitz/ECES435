close all; clear all; clc;

P = imread('peppers.tif'); %Read in image as unit8
B = imread('baboon.tif'); %Read in image as unit8

newimg = watermark(P,B,1);
newimg = uint8(newimg);
imshow(newimg)
