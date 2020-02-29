function [] = splitimg(img)
% This function splits a specific image into bitplanes

for i = 1:8
    newimg = get_bitplane(img,i); %split each bit plane and then
    subplot(2,4,i); % plot each bitplane in a 2x4
    imshow(newimg); % display the bitplane image
    title(['Bit Plane #',num2str(i)]); %title!
end
end

