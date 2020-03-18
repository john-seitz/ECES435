% ECES435 Assignment 5 - By Wanyu Li and John Seitz
close all; clear all; clc;
%% Part 1 - 1st Task - Contrast Enhancement

Imgs = {'imageCE1.tif','imageCE2.tif','imageCE3.tif','imageCE4.tif'};
%Load in images

%bin = 10; %preset number of bins

for i = 1:length(Imgs)
    newimg = imread(Imgs{i});
    figure(i);
    subplot(1,3,1);
    imshow(newimg);
    title('Image {i}');    
    subplot(1,3,2);
    imhist(newimg);
    title('imhist Pixel Histogram');
    subplot(1,3,3);
    bar(newimg);
    title('Bar Pixel Histogram');
end
