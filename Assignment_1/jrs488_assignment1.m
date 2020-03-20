%ECES435 Assignment 1 - By Wanyu Li and John Seitz
close all; clear all; clc;
%% Part 1 - Contrast Enhancment on Images

%Gamma correction of "pout" image
pout = imread('pout.tif'); %Read in the grayscale image file as unit8
type gammacorrection

figure(1);
subplot(1,4,1) %plot the original image
imshow(pout)
title 'Original'

gamma = 1; %user specified gamma value
Newimg = gammacorrection(gamma,pout); %gamma correction function
newpout = uint8(Newimg); %change corrected image to unit8 type
subplot(1,4,2)
imshow(newpout)
title 'Gamma = 1'

gamma = .5; %user specified gamma value
Newimg = gammacorrection(gamma,pout); %gamma correction function
newpout = uint8(Newimg); %change corrected image to unit8 type
subplot(1,4,3)
imshow(newpout)
title 'Gamma = 0.5'

gamma = 1.5; %user specified gamma value
Newimg = gammacorrection(gamma,pout); %gamma correction function
newpout = uint8(Newimg); %change corrected image to unit8 type
subplot(1,4,4)
imshow(newpout)
title 'Gamma = 1.5'

%Gamma Correction and Histeq On 'moonPhobos' Image

moonPhobos = imread('MoonPhobos.tif');
figure(2);

subplot(3,2,1);
imshow(moonPhobos)
title 'Original';
subplot(3,2,2);
imhist(moonPhobos);
title 'Original Pixel Histogram';

%Gamma correction of moonPhobos image

gamma = 0.25; %user specified gamma value
Newimg = gammacorrection(gamma,moonPhobos); % perform gamma correction function
newmoonPhobos = uint8(Newimg); %change corrected image to unit8 type
subplot(3,2,3);
imshow(newmoonPhobos)
title 'Gamma = 0.25'
subplot(3,2,4);
imhist(newmoonPhobos);
title 'Gamma = 0.25 Pixel Histogram'

%Histogram Equalization contrast enhancement
subplot(3,2,5);
newmoonPhobos = histeq(moonPhobos,256);
imshow(newmoonPhobos)
title 'Histeq Enhancment'
subplot(3,2,6);
imhist(newmoonPhobos);
title 'Histeq Pixel Histogram'

%Comments and Discussion
%Below are four images of "Pout", the affect of the gamma correction
%contrast enhancment can be seen. When gamma=1, the image is identical to
%the original due to the equation canceling out. When gamma<1, the image
%becomes lighter and therefore the pixel value histogram is skewed towards
%255. When gamma>1, the opposite happens: the image becomes darker, and
%therefore the pixel value histogram is skewed towards 0.

%After applying the gamma correction contrast enhancment on the moonPhobos
%image, it was decided that the image looks best when gamma=0.25. This
%value makes the enhanced image much more clear and the contrast appears
%much higher when looking at subtle edges. Matlab's histeq enhancement,
%below the gamma enhancment, looks worse than the gamma enhancement. The
%contrast can still be seen in subtle edges (like the craters), but the
%entire image is washed out and unclear. Furthermore, the pixel histogram
%of the gamma enhanced image is much more evenly distributed compared to
%Matlab's histeq enhancement, which is skewed towards 255 with a much lower
%dynamic range.')

%% Part 2 - Sharpening Enhancment on Images

%Sharpen enhancment of "moon" image using laplacian filter

moon = imread('moon.tif'); %Read in "moon" image
type sharpen

figure(3)
subplot(1,3,1);
imshow(moon); %Plot the original image
title("Original");

subplot(1,3,2);
alpha = 2; %User specified scaling constant alpha
NewImg = sharpen(alpha,moon); %Apply the sharpen function to the image
imshow(NewImg) %Plot the alpha = 2 enhanced image
title 'alpha = 2';

subplot(1,3,3);
alpha = 3; %User specified scaling constant alpha
NewImg2 = sharpen(alpha,moon); %Apply the sharpen function to the image
imshow(NewImg2) %Plot the alpha = 3 enhanced image
title 'alpha = 3';

% Sharpen outoffocus

figure(4)
outoffocus = imread('outoffocus.tif');
subplot(1,3,1);
imshow(outoffocus); %Plot the original image
title("Original");

subplot(1,3,2);
alpha = 10;
newimg = sharpen(alpha,outoffocus); %Apply the sharpen function to the image
imshow(newimg) %Plot the alpha = 10 sharpened image
title 'alpha = 10';

subplot(1,3,3);
alpha = 15;
newimg = sharpen(alpha,outoffocus); %Apply the sharpen function to the image
imshow(newimg) %Plot the alpha = 15 sharpened image
title 'alpha = 15';

%Comments and Discussion
%After applying the sharpening function to the "moon" image, the best value
%for alpha appears to be somewhere between 2 and 3. At both values, the
%image is sharp, but the alpha=2 image looks a bit blurry, while the
%alpha=3 looks a little overprocessed.

%When applying the sharpening function to the "outoffocus" image, there was
%some debate in the team. One member founder the alpha=10 to be sharper and
%clearer, while another found the alpha 15 better. If a lossless
%enhancement method was used to make the outoffocus image from the original
%in-focus image, then it should be possible to recover it. When the image
%is sharpened, already in focus parts of the image may become blurry, while
%the overall image becomes sharper.
%% Part 3 - Denoising Images

%Denoising of two Peppers images, using median filter and the averaging
%filter, window sizes including 3 ×3 pixels and 5 × 5 pixels

figure(5)

subplot(2,5,1); %Create a 2x5 plot to compare denoised images
peppersnoise1 =  imread('peppersNoise1.tiff'); %Read in image
imshow(peppersnoise1); %Display Noised image
title('Peppers Noise 1');

subplot(2,5,2);
avgfilter3x3= ones(3)/9; %create the averaging filter matrix 3x3 window size
peppers1Avg3= filter2(avgfilter3x3,peppersnoise1);
imshow(uint8(peppers1Avg3)) %Convert and show image back to unit8
title('Avg. Filter 3x3');

subplot(2,5,3);
avgfilter5x5= ones(5)/25; %create the averaging filter 5x5 matrix window size
peppers1Avg5= filter2(avgfilter5x5,peppersnoise1);
imshow(uint8(peppers1Avg5)) %Convert and show image back to unit8
title('Avg. Filter 5x5');

subplot(2,5,4);
peppers1Med3= medfilt2(peppersnoise1,[3 3]); %apply the median filter with 3x3 window size
imshow(peppers1Med3)
title('Med. Filter 3x3')

subplot(2,5,5);
peppers1Med5= medfilt2(peppersnoise1,[5 5]); %apply the median filter with 5x5 window size
imshow(peppers1Med5)
title('Med. Filter 5x5')

subplot(2,5,6);
peppersnoise2 =  imread('peppersNoise2.tiff'); %Read in image
imshow(peppersnoise2); %Show original image 
title('Peppers Noise 2');

subplot(2,5,7);
avgfilter3x3 = ones(3)/9; %create the averaging filter matrix 3x3 window size
peppers2Avg3= filter2(avgfilter3x3,peppersnoise2);
imshow(uint8(peppers2Avg3)) %Convert and show image back to unit8
title('Avg. Filter 3x3');

subplot(2,5,8);
avgfilter5x5= ones(5)/25; %create the averaging filter matrix 5x5 window size
peppers2Avg5= filter2(avgfilter3x3,peppersnoise2);
imshow(uint8(peppers2Avg5)) %Convert and show image back to unit8
title('Avg. Filter 5x5');

subplot(2,5,9);
peppers2Med3= medfilt2(peppersnoise2,[3 3]); %apply the median filter with 3x3 window size
imshow(peppers2Med3)
title('Med. Filter 3x3')

subplot(2,5,10);
peppers2Med5= medfilt2(peppersnoise2,[5 5]); %apply the median filter with 5x5 window size
imshow(peppers2Med5)
title('Med. Filter 5x5')

SobelX =  [ -1 0 1
            -2 0 2
            -1 0 1 ]; % Create the first Sobel filter (x)
SobelY = SobelX'; % Create the second Sobel filter (y) by transposing Sy

figure(6)

peppersavg3 = imread('peppersavg3.tif'); %Read in denoised image
subplot(2,2,1) %Create a 2x2 matrix subplot to compare the two denoised images and two edgemaps
imshow(peppersavg3) %Show the Denoised image
title('Peppers Avg. Filter 3x3');

peppersmed3 = imread('peppersmed3.tif'); %Read in denoised image
subplot(2,2,3)
imshow(peppersmed3) %Show the Denoised image
title('Peppers Med. Filter 3x3');

Gx1= filter2(SobelX,peppers1Avg3); % Apply the sobel filter to the rows, x-axis
Gy1= filter2(SobelY,peppers1Avg3); % Apply the sobel filter to the columns, y-axis
gradient1 = (Gx1.^2 + Gy1.^2).^.5; % create the gradient equation
threshold= 125; %User defined threshold value
avgedgemap = gradient1 > threshold; %Create the edgemap comparing the gradient to the threshold
subplot(2,2,2)
imshow(avgedgemap)
title('Edgemap of Avg. Filtered "peppersNoise1"');

Gx2 = filter2(SobelX,peppers1Med3); % Apply the sobel filter to the rows, x-axis
Gy2 = filter2(SobelY,peppers1Med3); % Apply the sobel filter to the columns, y-axis
gradient2 = (Gx2.^2 + Gy2.^2).^.5; % create the gradient equation
mededgemap = gradient2 > threshold; % Create the edgemap comparing the gradient to the threshold
subplot(2,2,4)
imshow(mededgemap)
title('Edgemap of Med. Filtered "peppersNoise1"');

%Comments and Discussion
%The averaging and median filters were applied to the "peppersnoise1" and
%"peppersnoise2" images, with window sizes of 3x3 and 5x5. From the images
%produced, it appears the 3x3 window size retains sharpness of the original
%images while making the image slightly less noisy/speckled. On the other
%hand, the 5x5 window size appears to greatly improve the noise in the
%images, but at the expense of making the images blurry. The average filter
% and median filter appear to have less affects on the image compared to
% the window size. The averaging filter keeps the image's clarity with moderate
% noise reduction, while the median filter makes the image less noisy,
% but a little less clear.

%After extracting the edges from the noisy pepper filtered using the
%image's gradient and sobel filters, the edgemaps can be examined. From
%quick inspection, it is obvious the median filtered image is much more
%noisy than the average filtered image. After closer inspection, the edges
%are easier to follow in the median filtered image.
