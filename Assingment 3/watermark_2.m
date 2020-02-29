function [img_bp] = watermark_2(img,wmk,bp)
%Function to replace a specific bitplane of one image with another
%specified bitplane of another image

newimg = double(img);%initializing result mat
wmk = double(wmk);

for i = 1:bp
    newimg = bitset(newimg,i,getPlane(wmk,i+8-bp));
end
img_bp = uint8(newimg);
end


