
% get each color layer of the image
baboonRed= baboon(:,:,1); % red color layer
baboonGreen= baboon(:,:,2); % green color layer
baboonBlue= baboon(:,:,3); % blue color layer

baboon(:,:,2)=0;
baboon(:,:,3)=0;

% display each color layer
figure
imshow(baboon)