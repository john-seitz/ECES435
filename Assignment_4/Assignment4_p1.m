%ECES435 Assignment 4 Part 2 - By Wanyu Li and John Seitz
close all; clear all; clc;

% Examing 3 block artifact images using the created function to implement
% Fan and de Quieroz's JPEG blocking artifact detection algorithm

Imgs = {'blockArtifacts1.tif','blockArtifacts2.tif','blockArtifacts3.tif'};

for i=1:length(Imgs)
    figure(i)
    K = ArtifactDetector(Imgs{i});
    
    if K > 0.25 % Detect evidence of JPEG compression if K>n and classifies image as never compressed if K<n
    sprintf('Evidence of JPEG Compression')
else
    sprintf('Never Compressed')
    
    end
end


