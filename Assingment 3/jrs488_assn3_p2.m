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

%% Part 2 - 2nd Task - Extract the watermark embedded in the given image using key 435

figure(2*i+1) % create figures of length i*2+1

ym_img = imread('YMwmkedKey435.tiff');
newimg = YMD(ym_img,435); % Use the specified key in the assignment = 435

subplot(1,2,1)
imshow(ym_img)
title('YMwmkedKey435.tiff')

subplot(1,2,2)
imshow(newimg)
title('Extracted Watermark')

%% Part 2 - 3rd Task - Extract the watermark embedded in the given image using key 435 

baboon_ymwmk = imread('baboon_ymwmk.tiff'); % Read in Yeung-Mintzer watermarked image
peppers_ymwmk = imread('peppers_ymwmk.tiff'); % Read in Yeung-Mintzer watermarked image

bab = imread('baboon.tif'); % Read in original host images
pep = imread('peppers.tif'); % Read in original host images

wmk = imread('Barbara.bmp'); % Read in Watermark image


pep_lsb = watermark_2(pep, wmk,3);
bab_lsb = watermark_2(bab, wmk,3);
both_lsb = [pep_lsb(1:256,:);bab_lsb(257:512,:)];

figure(6)
imshow(both_lsb)
title('LSB Watermark Manipulation')

figure(7);
splitimg(both_lsb);

%% Yeung-Mintzer watermarked image
both_img = [pep(1:256,:);baboon_ymwmk(257:512,:)]; % Image with both halves put together
wmk_img = YMD(both_img,0);

figure(8)
subplot(1,2,1)
imshow(both_img)
title('Peppers and Baboons Watermark')
subplot(1,2,2)
imshow(wmk_img);

test_ym = [peppers_ymwmk(1:256,:);baboon_ymwmk(257:512,:)]; % Test out an attack with the Yeung-Mintzer
YME_wmk = YMD(test_ym,0);

figure(9)
subplot(1,2,1)
imshow(test_ym)
title('Peppers Watermark and Baboons Watermark')
subplot(1,2,2)
imshow(YME_wmk);