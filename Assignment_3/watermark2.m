function [newimg] = watermark2(img1,img2,NIbp,WMbp)
%Function to replace a specific bitplane of one image with another
%specified bitplane of another image

%img1 = double(img1);
%img2 = double(img2); %watermark

bp = get_bitplane(img2,WMbp);
newimg = bitset(img1,NIbp,bp);

end