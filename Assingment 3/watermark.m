function [newimg] = watermark(img1,img2) %Define function
%Watermark function will take two images, img1 behind the host, and img2
%being the watermark. convert them to double, then replace the bitplane 'N'
%of img1 with img2
img1 = double(img1); %Host image to double
img2 = double(img2); %watermark image to double

% for i = 1:length(ar1)
% watermark_bp = get_bitplane(img2,ar1(i)); %use created get_bitplane function to get bitplane from watermark image
% newimg = bitset(img1,ar2(i),watermark_bp); %create the new img1 by replacing the 'N' bitplane with the bitplane from watermark image (img2)
% end

watermark_bp = get_bitplane(img2,8); %use created get_bitplane function to get bitplane from watermark image
newimg = bitset(img1,1,watermark_bp); %create the new img1 by replacing the 'N' bitplane with the bitplane from watermark image (img2)

watermark_bp = get_bitplane(img2,7); %use created get_bitplane function to get bitplane from watermark image
newimg = bitset(img1,2,watermark_bp); 

end