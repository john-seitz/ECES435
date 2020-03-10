moonPhobos = imread('MoonPhobos.tif');
figure(2);

subplot(1,3,1);
imshow(moonPhobos)
title 'Original';
%subplot(3,2,2);
%imhist(moonPhobos);
%title 'Original Pixel Histogram';

%Gamma correction of moonPhobos image

gamma = 0.3; %user specified gamma value
Newimg = gammacorrection(gamma,moonPhobos); %gamma correction function
newmoonPhobos = uint8(Newimg); %change corrected image to unit8 type
subplot(1,3,2);
imshow(newmoonPhobos)
title 'Gamma = 0.3'
%subplot(3,2,4);
%imhist(newmoonPhobos);
%title 'Gamma = 0.3 Pixel Histogram'

gamma = 0.25; %user specified gamma value
Newimg = gammacorrection(gamma,moonPhobos); %gamma correction function
newmoonPhobos = uint8(Newimg); %change corrected image to unit8 type
subplot(1,3,3);
imshow(newmoonPhobos)
title 'Gamma = 0.35'
%subplot(3,2,6);
%imhist(newmoonPhobos);
%title 'Gamma = 0.35 Pixel Histogram'