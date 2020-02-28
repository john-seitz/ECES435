function [newimg] = watermark(img1,img2,N)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
img1 = double(img1);
img2 = double(img2); %watermark

bp = get_bitplane(img2,8);
newimg = bitset(img1,N,bp);

end

