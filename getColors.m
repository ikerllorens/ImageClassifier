function [ RGB ] = getColors( )

RGB = [];
imagefiles = dir('*.jpeg');
nfiles = length(imagefiles); % Number of files found
for ii=1:nfiles
currentfilename = imagefiles(ii).name;
currentimage = imread(currentfilename);
temp = currentimage;
tempR = temp(:,:,1);
R = mean(tempR(:));

tempG = temp(:,:,2);
G = mean(tempG(:));

tempB = temp(:,:,3);
B = mean(tempB(:));

RGB = horzcat(RGB, [R;G;B]);

end

end