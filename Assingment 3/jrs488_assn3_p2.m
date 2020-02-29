%ECES435 Assignment 3 Part 2 - By Wanyu Li and John Seitz
close all; clear all; clc;

%% Part 2 - 1st Task - Yeung-Mintzer embedding function to hide the most signicant bit plane of the Barbara image in both the peppers and baboon images

imgs = {'peppers.tif','baboon.tif'}; % Read in the two host images, peppers and baboons
wmkimages = uint8(zeros(512,512,length(imgs)));

for i = 1:length(imgs)
    img = imread(imgs{i});
    wmk = get_bitplane(imread('Barbara.bmp'),8); % Read in most significant bitplane of watermark image to embed in others
    
    figure(2*i-1) % create figures of length i*2-1
    key = 0; % initialize key value to zero
    [wmkimages(:,:,i)] = YME(img,wmk,key); %Use the created function to implement the Yeung-Mintzer altorithm to embed a binary watermark in an image
    imshow(wmkimages(:,:,i)) % display the new watermarked images
    
    imgs{i}
    peaksnr = psnr(wmkimages(:,:,i),img) % calculate the psnr of the watermark images vs the original
    title(['PSNR of image',num2str(peaksnr)])
    figure(2*i)
    splitimg(wmkimages(:,:,i));
end

imwrite(wmkimages(:,:,1),'peppers_ymwmk.tiff','tiff'); % save the Yeung-Mintzer watermarked image as tiff
imwrite(wmkimages(:,:,2),'baboon_ymwmk.tiff','tiff');  % save the Yeung-Mintzer watermarked image as tiff

%% Part 2 - 1st Task - Extract the watermark embedded in the given image using key 435

figure(2*i+1) % create figures of length i*2+1

ym_img = imread('YMwmkedKey435.tiff');
newimg = YMD(ym_img,435); % Use the specified key in the assignment = 435

subplot(1,2,1)
imshow(ym_img)
title('YMwmkedKey435.tiff')

subplot(1,2,2)
imshow(newimg)
title('Extracted Watermark')