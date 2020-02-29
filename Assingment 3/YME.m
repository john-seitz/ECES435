function [newimg] = YME(img,wmk,key)
% This function implements the Yeung-Mintzer altorithm to embed a binary watermark in an image.
%For this function to work properly,the host image and watermark image must have the same size
%%
rng(key); %Use the rng command in Matlab
LUTvals = rand(1,256) > .5; %to generate an array of 256 uniformly distributed random numbers, then compare them to a threshold of 0.5
%%
[x,y] = size(img);
zz = zeros(x,y);
for i = 1:x
    for j = 1:y
        zz(i,j) = LUTvals(img(i,j)+1); % Extract the watermark image
        W(i,j) = wmk(i,j);
        if (zz(i,j) ~= W(i,j)) % use if statement to compare both images
            img(i,j) = pixcorrect(img(i,j),LUTvals); %use the pixcorrect function to perform pixel correction          
        end
    end
end
newimg = img;
end


