function [ZZ] = YMD(img,key)
% This function implements the Yeung-Mintzer altorithm to decode/extract a binary watermark in an image.

rng(key); %Use the rng command in Matlab
LUTvals= rand(1,256) > .5; %to generate an array of 256 uniformly distributed random numbers, then compare them to a threshold of 0.5

[x,y] = size(img);
ZZ = zeros(x,y);
% Use look up table to decode the Yeung-Mintzer image
for i = 1:x
    for j = 1:y
        ZZ(i,j) = LUTvals(img(i,j)+1); % By adding 1, the range is changed to 1-256, the same range as the look up value table  
    end
end
end

