%% Part 1 - 3rd Task
Pep = imread('peppers.tif'); %Read in image as unit8
Bab = imread('baboon.tif'); %Read in image as unit8
Barb = imread('Barbara.bmp'); %Read in image as unit8


figure(7)

subplot(2,4,1)
newimg = watermark2(Bab,Barb,1,1);
imshow(newimg)

subplot(2,4,2)
newimg = watermark2(newimg,Barb,2,2);
imshow(newimg)

subplot(2,4,3)
newimg = watermark2(newimg,Barb,3,3);
imshow(newimg)

subplot(2,4,4)
newimg = watermark2(newimg,Barb,4,4);
imshow(newimg)

subplot(2,4,5)
newimg = watermark2(newimg,Barb,5,5);
imshow(newimg)

subplot(2,4,6)
newimg = watermark2(newimg,Barb,6,6);
imshow(newimg)

subplot(2,4,7)
newimg = watermark2(newimg,Barb,7,7);
imshow(newimg)

subplot(2,4,8)
newimg = watermark2(newimg,Barb,8,8);
imshow(newimg)