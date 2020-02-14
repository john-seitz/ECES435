function [Newimg] = gammacorrection(gamma,img)
img = double(img); %Make image value be double type
[Rows,Cols]= size(img); %Get dimensions of image
for I= 1:Rows %perform correction on each pixel value
    for K = 1:Cols
        Newimg(I,K) = 255*( img(I,K) /255).^(gamma); %Gamma correction equation
    end
end

end