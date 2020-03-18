%ECES435 Assignment 5 - By Wanyu Li and John Seitz
close all; clear all; clc;
%% Part 1 - 1st Task - Contrast Enhancement

P1Imgs = {'imageCE1.tif','imageCE2.tif','imageCE3.tif','imageCE4.tif'};
%Load in images

bin = 5000; %preset number of bins

for i = 1:length(P1Imgs)
    newimg = imread(P1Imgs{i});
    figure(i);
    subplot(1,2,1);
    imshow(newimg);
    title('Original Image');    
    subplot(1,2,2);
    [Count, Bin] = imhist(newimg,bin); % use imhist to calculate the image's PVH
    bar(Bin,Count); % use the bar function to display as stem plots
    title('Pixel Value Histogram');
    
end

%% Part 1 - 2nd Task  Gamma Correction
P2Imgs = {'unaltIm1.tif','unaltIm2.tif','unaltIm3.tif'};
Gamma = {0.7,1,1.3};
% performing gamma correction to the img. 
% note that img dont change if gamma = 1;

for k = 1:length(Gamma)
    for j = 1:length(P2Imgs)
       figure
       NewImg = GammaCorrection(P2Imgs{j},Gamma{k});
       %Performing gamma correction to the img with respecte to gamma
       %value
    end
end

%% Part 1 - 3rd Task Contractive or Expansive 
IMG5 = imread('imageCE5.tif');
figure
subplot(1,2,1);
imshow(IMG5);
title('imageCE5.tif');
subplot(1,2,2);
[Count, Bin] = imhist(newimg,bin);
bar(Bin,Count);
%get the img histogram and plot as bar 


%% Part 2 - 1st Task

close all; clear all; clc;
format compact;
% initializing and set parameters
PATH = {'resamp1.tif','resamp2.tif','resamp3.tif','resamp4.tif'};
lamda = 1;
tau = 2;
sigma = 1;
%get p map and freq p map for each img. 

for i = 1: length(PATH)
    p_map = Kirchner(PATH{i},lamda,tau,sigma);
    
end
