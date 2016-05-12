function [ images ] = getImages( )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
imagefiles = dir('*.jpeg');
nfiles = length(imagefiles);    % Number of files found
for ii=1:nfiles
currentfilename = imagefiles(ii).name;
currentimage = imread(currentfilename);
images{ii} = currentimage;
end

end

