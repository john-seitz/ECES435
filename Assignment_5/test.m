% ECES435 Assignment 5 - By Wanyu Li and John Seitz
close all; clear all; clc;
%% Part 1 - 1st Task - Contrast Enhancement

P2Imgs = {'unaltIm1.tif','unaltIm2.tif','unaltIm3.tif'};

for k = 1:length(P2Imgs)
    
    img = imread(P2Imgs{k});
    figure(k);
    subplot(2,3,1);
    imshow(img);
    title('Original Image PVH')
    
    subplot(2,3,2);
    newimg = gammacorrect(0.7,img);
    newimg = uint8(newimg);
    imshow(newimg)
    title 'Gamma = 0.7 PVH'
    
    subplot(2,3,3);
    newimg = gammacorrect(1.3,img);
    newimg = uint8(newimg);
    imshow(newimg)
    title 'Gamma = 1.3 PVH'
    
    img = imread(P2Imgs{k});
    figure(k);
    subplot(2,3,4);
    imhist(img);
    title('Original Image PVH')
    
    subplot(2,3,5);
    newimg = gammacorrect(0.7,img);
    newimg = uint8(newimg);
    imhist(newimg)
    title 'Gamma = 0.7 PVH'
    
    subplot(2,3,6);
    newimg = gammacorrect(1.3,img);
    newimg = uint8(newimg);
    imhist(newimg)
    title 'Gamma = 1.3 PVH'
    
end

%%
