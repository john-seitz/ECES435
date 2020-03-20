function [p] = kirchnerPmap(Image,lamda,tau,sigma)
% This function was created to implement Kirchner's resampling detection
% algorithim using a fixed linear prediction filter to approximate this
% relationship


img = double(imread(Image));
[x y] = size(img); % Get image dimensions 

alpha_filter = [-0.25 0.5 -0.25
        0.5 0 0.5
        -0.25 0.5 -0.25];
    
newimg = filter2(alpha_filter, img); % Apply the alpha filter
Error = img - newimg; % Calculate the error
p = lamda*exp(-Error.^tau/sigma); % Obtain the p-map

figure;
subplot(1,3,1);
imshow(uint8(img));%show the original img
title(string(Image));

subplot(1,3,2);
imagesc(p) % display the calculated p-map
title('Images P Map');

%The axis of plots must be normalized to allow for comparison, as done
%below

axis equal
axis off;
xlim([1 y]);
ylim([1 x]);

subplot(1,3,3);
showFreqPmap(p);
title('Images Freq P map');

axis equal
axis off;
xlim([1 y]);
ylim([1 x]);
end