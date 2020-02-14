%ECES435 Assignment 2 - By Wanyu Li and John Seitz
close all; clear all; clc;
%% Part 1 - Compression on Images

%Compression on Peppers Image
peppers = imread('peppers.tif'); %Read in the grayscale image file as unit8
peppers_size = dir('peppers.tif').bytes %Find filesize of image


imwrite(peppers, 'peppers90.jpg', 'Quality', 90) %Save Peppers image using a quality factor of 90
peppers90 = imread('peppers90.jpg'); %Read in peppers90 image
[peaksnr, snr] = psnr(peppers, peppers90); %Calculate the PSNR between the original image and the compressed
fprintf('\n The Peak-SNR value is %0.4f', peaksnr); %Print the PSNR Value
peppers90_size = dir('peppers90.jpg').bytes %Find filesize of image

imwrite(peppers, 'peppers70.jpg', 'Quality', 70) %Save Peppers image using a quality factor of 90
peppers70 = imread('peppers70.jpg'); %Read in peppers90 image
[peaksnr, snr] = psnr(peppers, peppers70); %Calculate the PSNR between the original image and the compressed
fprintf('\n The Peak-SNR value is %0.4f', peaksnr); %Print the PSNR Value
peppers70_size = dir('peppers70.jpg').bytes %Find filesize of image

imwrite(peppers, 'peppers50.jpg', 'Quality', 50) %Save Peppers image using a quality factor of 90
peppers50 = imread('peppers50.jpg'); %Read in peppers90 image
[peaksnr, snr] = psnr(peppers, peppers50); %Calculate the PSNR between the original image and the compressed
fprintf('\n The Peak-SNR value is %0.4f', peaksnr); %Print the PSNR Value
peppers50_size = dir('peppers50.jpg').bytes %Find filesize of image

imwrite(peppers, 'peppers30.jpg', 'Quality', 30) %Save Peppers image using a quality factor of 90
peppers30 = imread('peppers30.jpg'); %Read in peppers90 image
[peaksnr, snr] = psnr(peppers, peppers30); %Calculate the PSNR between the original image and the compressed
fprintf('\n The Peak-SNR value is %0.4f', peaksnr); %Print the PSNR Value
peppers30_size = dir('peppers30.jpg').bytes %Find filesize of image

imwrite(peppers, 'peppers10.jpg', 'Quality', 10) %Save Peppers image using a quality factor of 90
peppers10 = imread('peppers10.jpg'); %Read in peppers90 image
[peaksnr, snr] = psnr(peppers, peppers10); %Calculate the PSNR between the original image and the compressed
fprintf('\n The Peak-SNR value is %0.4f', peaksnr); %Print the PSNR Value
peppers10_size = dir('peppers10.jpg').bytes %Find filesize of image

%Compression on Baboon Image
baboon_size = dir('baboon.tif').bytes %Find filesize of image
baboon = imread('baboon.tif'); %Read in the grayscale image file as unit8

imwrite(baboon, 'baboon90.jpg', 'Quality', 90) %Save Baboon image using a quality factor of 90
baboon90 = imread('baboon90.jpg'); %Read in baboon90 image
[peaksnr, snr] = psnr(baboon, baboon90); %Calculate the PSNR between the original image and the compressed
fprintf('\n The Peak-SNR value is %0.4f', peaksnr); %Print the PSNR Value
baboon90_size = dir('baboon90.jpg').bytes %Find filesize of image

imwrite(baboon, 'baboon70.jpg', 'Quality', 70) %Save Baboon image using a quality factor of 90
baboon70 = imread('baboon70.jpg'); %Read in baboon90 image
[peaksnr, snr] = psnr(baboon, baboon70); %Calculate the PSNR between the original image and the compressed
fprintf('\n The Peak-SNR value is %0.4f', peaksnr); %Print the PSNR Value
baboon70_size = dir('baboon70.jpg').bytes %Find filesize of image

imwrite(baboon, 'baboon50.jpg', 'Quality', 50) %Save Baboon image using a quality factor of 90
baboon50 = imread('baboon50.jpg'); %Read in baboon90 image
[peaksnr, snr] = psnr(baboon, baboon50); %Calculate the PSNR between the original image and the compressed
fprintf('\n The Peak-SNR value is %0.4f', peaksnr); %Print the PSNR Value
baboon50_size = dir('baboon50.jpg').bytes %Find filesize of image

imwrite(baboon, 'baboon30.jpg', 'Quality', 30) %Save Baboon image using a quality factor of 90
baboon30 = imread('baboon30.jpg'); %Read in baboon90 image
[peaksnr, snr] = psnr(baboon, baboon30); %Calculate the PSNR between the original image and the compressed
fprintf('\n The Peak-SNR value is %0.4f', peaksnr); %Print the PSNR Value
baboon30_size = dir('baboon30.jpg').bytes %Find filesize of image

imwrite(baboon, 'baboon10.jpg', 'Quality', 10) %Save Baboon image using a quality factor of 90
baboon10 = imread('baboon10.jpg'); %Read in baboon90 image
[peaksnr, snr] = psnr(baboon, baboon10); %Calculate the PSNR between the original image and the compressed
fprintf('\n The Peak-SNR value is %0.4f', peaksnr); %Print the PSNR Value
baboon10_size = dir('baboon10.jpg').bytes %Find filesize of image