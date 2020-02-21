function [Bitplane_img] = get_bitplane(img,bitplane)
%This function outputs the specified bitplane of the input img
img = double(img); %Convert unit8 image to double
Bitplane_img = bitget(img,bitplane); %Extract specified bit plane from img
end

