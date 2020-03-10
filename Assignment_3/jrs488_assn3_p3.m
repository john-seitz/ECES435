%ECES435 Assignment 3 Part 2 - By Wanyu Li and John Seitz
close all; clear all; clc;

%% Part 3 - 

baboon_ymwmk = imread('baboon_ymwmk.tiff'); % Read in Yeung-Mintzer watermarked image
peppers_ymwmk = imread('peppers_ymwmk.tiff'); % Read in Yeung-Mintzer watermarked image

bab = imread('baboon.tif'); % Read in original host images
pep = imread('peppers.tif'); % Read in original host images

wmk = imread('Barbara.bmp'); % Read in Watermark image


pep_lsb = watermark_2(pep, wmk,3);
bab_lsb = watermark_2(bab, wmk,3);
both_lsb = [pep_lsb(1:256,:);bab_lsb(257:512,:)];

figure(1)
imshow(both_lsb)
title('LSB Watermark Manipulation')

figure(2);
splitimg(both_lsb);

%% Yeung-Mintzer watermarked image
both_img = [pep(1:256,:);baboon_ymwmk(257:512,:)]; % Image with both halves put together
wmk_img = YMD(both_img,0);

figure(3)
subplot(1,2,1)
imshow(both_img)
title('Peppers and Baboons Watermark')
subplot(1,2,2)
imshow(wmk_img);

test_ym = [peppers_ymwmk(1:256,:);baboon_ymwmk(257:512,:)]; % Test out an attack with the Yeung-Mintzer
YME_wmk = YMD(test_ym,0);

figure(4)
subplot(1,2,1)
imshow(test_ym)
title('Peppers Watermark and Baboons Watermark')
subplot(1,2,2)
imshow(YME_wmk);
