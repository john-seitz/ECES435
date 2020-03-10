function [Newimg] = sharpen(alpha,img)
img = double(img); %Make image value be double type
[Rows,Cols]= size(img); %Get dimensions of image
LF = [0     -0.25 0; %Create the Laplacian Filter matrix
    -0.25 1 -0.25;
    0     -0.25 0];
             
    gxy = filter2(LF,img); %use the laplacian filter to obtain g(x,y)   
    Newimg = uint8(img+alpha*gxy); %Obtain the sharpened image according to equation 2, and made into unit8 type
end