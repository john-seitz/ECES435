% ECES435 Assignment 5 - By Wanyu Li and John Seitz
close all; clear all; clc;
%% Part 1 - 1st Task - Contrast Enhancement


Imgs = {'imageCE1.tif','imageCE2.tif','imageCE3.tif','imageCE4.tif'};
%Load in images


for i = 1:length(Imgs) % Loop for all 4 images
    newimg = imread(Imgs{i});
    figure(i);
    subplot(1,3,1);
    imshow(newimg);
    title('Image {i}');
    subplot(1,3,2);
    imhist(newimg); % use imhist to calculate the image's PVH
    title('imhist Pixel Histogram');
    subplot(1,3,3);
    bar(newimg); % use the bar function to display as stem plots
    title('Bar Pixel Histogram');
end