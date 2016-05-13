function [ RGB_input] = getColors( )

RGB_input = [];
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

RGB_input = horzcat(RGB_input, [R;G;B]);

end

%cambiar cantidad de muestras por color

end