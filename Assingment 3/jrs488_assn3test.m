Pep = imread('peppers.tif'); %Read in image as unit8
Bab = imread('baboon.tif'); %Read in image as unit8
Barb = imread('Barbara.bmp'); %Read in image as unit8

figure(1)

for I = 1:8
    for K = 8:-1:1
newimg = watermark2(Pep,Barb,I,K);
subplot(2,4,I)
imshow(newimg) %show bitplane
end
end

% newimg = watermark2(Pep,Barb,1,8);
% imshow(uint8(newimg))
% 
test = get_bitplane(newimg,1);
figure (2);
imshow(test) 
