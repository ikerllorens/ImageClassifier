function [ CA , MA] = getColorAverage(  )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

colorMatrix = [];
%avgMat = image_input;
tic;
RedImage_1 = [12, 22, 33, 29, 63, 45, 100, 121, 93, 87];
OrangeImage_1 = [26, 4, 25, 35, 27, 43, 66, 90, 103, 85];
YellowImage_1 = [6, 7, 5, 47, 53, 62, 102, 94, 102, 128];
GreenImage_1 = [9, 11, 20, 17, 23, 39, 95, 98, 101, 120];
BlueImage_1 = [13, 21, 37, 49, 56, 58, 60, 69, 79, 123];
MarineImage_1 = [15, 31, 68, 88, 96, 78, 97, 117, 65, 75];
PurpleImage_1 = [2, 18, 16, 24, 46, 59, 54, 122, 129, 99];
WhiteImage_1 = [3, 8, 19, 28, 55, 51, 73, 74, 76, 86];
GrayImage_1 = [38, 41, 57, 61, 72, 82, 89, 113, 108, 111];
BlackImage_1 = [1, 34, 40, 36, 52, 67, 80, 84];


RedImage_2 = [10, 19, 28, 32, 48, 55, 65];
OrangeImage_2 = [7, 14, 30, 38, 46, 51, 56, 60];
YellowImage_2 = [35, 49, 66];
GreenImage_2 = [2, 1, 18, 23, 21, 24, 36, 40, 43, 42, 47];
BlueImage_2 = [16, 15, 39, 44, 58, 63, 62, 67];
MarineImage_2 = [6, 11, 22, 27, 50, 54, 64];
PurpleImage_2 = [3, 12, 13, 20, 26, 34, 29, 37, 45, 52, 61];
WhiteImage_2 = [8, 9, 5, 41, 57];
GrayImage_2 = [4, 33, 53, 59, 68];
BlackImage_2 = [21, 25];

RedImage_3 = [36, 40, 47, 58, 76, 75, 84, 104, 106, 105, 109];
OrangeImage_3 = [7, 6, 26, 18, 32, 38, 68, 73, 78, 82, 83, 81];
YellowImage_3 = [31, 46, 55, 62, 64, 91, 88, 97, 110];
GreenImage_3 = [1, 5, 13, 14, 34, 35, 50, 51, 56, 63, 74, 77, 103];
BlueImage_3 = [4, 29, 33, 57, 70, 90, 92, 93, 94, 99];
MarineImage_3 = [10, 21, 27, 44, 48, 69, 89, 85, 100, 107];
PurpleImage_3 = [19, 22, 39, 45, 49, 43, 42, 59, 65, 66, 72, 80, 102, 111];
WhiteImage_3 = [9, 15, 17, 23, 20, 30, 52, 53, 71, 67, 96, 98];
GrayImage_3 = [2, 3, 8, 12, 24, 60, 79, 86, 87, 101, 108];
BlackImage_3 = [11, 16, 25, 28, 41, 37, 61, 95];

%% Imagen imagenprueba.jpg

image_input = imread('testing/imagenprueba.jpg');
[~, L, ~] = getImageStats(image_input);

Reds = [];
for i=1:length(RedImage_1)
    avgMat(:,:,1) = (uint8(L==RedImage_1(i)).* image_input(:,:,1));
    avgMat(:,:,2) = (uint8(L==RedImage_1(i)).* image_input(:,:,2));
    avgMat(:,:,3) = (uint8(L==RedImage_1(i)).* image_input(:,:,3));
    
    R_avg = mean(nonzeros(avgMat(:,:,1)));
    G_avg = mean(nonzeros(avgMat(:,:,2)));
    B_avg = mean(nonzeros(avgMat(:,:,3)));
   
    Reds = horzcat(Reds, [R_avg; G_avg; B_avg]);
end

Oranges = [];
for i=1:length(OrangeImage_1)
    avgMat(:,:,1) = (uint8(L==OrangeImage_1(i)).* image_input(:,:,1));
    avgMat(:,:,2) = (uint8(L==OrangeImage_1(i)).* image_input(:,:,2));
    avgMat(:,:,3) = (uint8(L==OrangeImage_1(i)).* image_input(:,:,3));
    
    R_avg = mean(nonzeros(avgMat(:,:,1)));
    G_avg = mean(nonzeros(avgMat(:,:,2)));
    B_avg = mean(nonzeros(avgMat(:,:,3)));
   
    Oranges = horzcat(Oranges, [R_avg; G_avg; B_avg]);
end


Yellows = [];
for i=1:length(YellowImage_1)
    avgMat(:,:,1) = (uint8(L==YellowImage_1(i)).* image_input(:,:,1));
    avgMat(:,:,2) = (uint8(L==YellowImage_1(i)).* image_input(:,:,2));
    avgMat(:,:,3) = (uint8(L==YellowImage_1(i)).* image_input(:,:,3));
    
    R_avg = mean(nonzeros(avgMat(:,:,1)));
    G_avg = mean(nonzeros(avgMat(:,:,2)));
    B_avg = mean(nonzeros(avgMat(:,:,3)));
   
    Yellows = horzcat(Yellows, [R_avg; G_avg; B_avg]);
end


Greens = [];
for i=1:length(GreenImage_1)
    avgMat(:,:,1) = (uint8(L==GreenImage_1(i)).* image_input(:,:,1));
    avgMat(:,:,2) = (uint8(L==GreenImage_1(i)).* image_input(:,:,2));
    avgMat(:,:,3) = (uint8(L==GreenImage_1(i)).* image_input(:,:,3));
    
    R_avg = mean(nonzeros(avgMat(:,:,1)));
    G_avg = mean(nonzeros(avgMat(:,:,2)));
    B_avg = mean(nonzeros(avgMat(:,:,3)));
   
    Greens = horzcat(Greens, [R_avg; G_avg; B_avg]);
end


Blues = [];
for i=1:length(BlueImage_1)
    avgMat(:,:,1) = (uint8(L==BlueImage_1(i)).* image_input(:,:,1));
    avgMat(:,:,2) = (uint8(L==BlueImage_1(i)).* image_input(:,:,2));
    avgMat(:,:,3) = (uint8(L==BlueImage_1(i)).* image_input(:,:,3));
    
    R_avg = mean(nonzeros(avgMat(:,:,1)));
    G_avg = mean(nonzeros(avgMat(:,:,2)));
    B_avg = mean(nonzeros(avgMat(:,:,3)));
   
    Blues = horzcat(Blues, [R_avg; G_avg; B_avg]);
end


Marines = [];
for i=1:length(MarineImage_1)
    avgMat(:,:,1) = (uint8(L==MarineImage_1(i)).* image_input(:,:,1));
    avgMat(:,:,2) = (uint8(L==MarineImage_1(i)).* image_input(:,:,2));
    avgMat(:,:,3) = (uint8(L==MarineImage_1(i)).* image_input(:,:,3));
    
    R_avg = mean(nonzeros(avgMat(:,:,1)));
    G_avg = mean(nonzeros(avgMat(:,:,2)));
    B_avg = mean(nonzeros(avgMat(:,:,3)));
   
    Marines = horzcat(Marines, [R_avg; G_avg; B_avg]);
end


Purples = [];
for i=1:length(PurpleImage_1)
    avgMat(:,:,1) = (uint8(L==PurpleImage_1(i)).* image_input(:,:,1));
    avgMat(:,:,2) = (uint8(L==PurpleImage_1(i)).* image_input(:,:,2));
    avgMat(:,:,3) = (uint8(L==PurpleImage_1(i)).* image_input(:,:,3));
    
    R_avg = mean(nonzeros(avgMat(:,:,1)));
    G_avg = mean(nonzeros(avgMat(:,:,2)));
    B_avg = mean(nonzeros(avgMat(:,:,3)));
   
    Purples = horzcat(Purples, [R_avg; G_avg; B_avg]);
end


Whites = [];
for i=1:length(WhiteImage_1)
    avgMat(:,:,1) = (uint8(L==WhiteImage_1(i)).* image_input(:,:,1));
    avgMat(:,:,2) = (uint8(L==WhiteImage_1(i)).* image_input(:,:,2));
    avgMat(:,:,3) = (uint8(L==WhiteImage_1(i)).* image_input(:,:,3));
    
    R_avg = mean(nonzeros(avgMat(:,:,1)));
    G_avg = mean(nonzeros(avgMat(:,:,2)));
    B_avg = mean(nonzeros(avgMat(:,:,3)));
   
    Whites = horzcat(Whites, [R_avg; G_avg; B_avg]);
end


Grays = [];
for i=1:length(GrayImage_1)
    avgMat(:,:,1) = (uint8(L==GrayImage_1(i)).* image_input(:,:,1));
    avgMat(:,:,2) = (uint8(L==GrayImage_1(i)).* image_input(:,:,2));
    avgMat(:,:,3) = (uint8(L==GrayImage_1(i)).* image_input(:,:,3));
    
    R_avg = mean(nonzeros(avgMat(:,:,1)));
    G_avg = mean(nonzeros(avgMat(:,:,2)));
    B_avg = mean(nonzeros(avgMat(:,:,3)));
   
    Grays = horzcat(Grays, [R_avg; G_avg; B_avg]);
end


Blacks = [];
for i=1:length(BlackImage_1)
    avgMat(:,:,1) = (uint8(L==BlackImage_1(i)).* image_input(:,:,1));
    avgMat(:,:,2) = (uint8(L==BlackImage_1(i)).* image_input(:,:,2));
    avgMat(:,:,3) = (uint8(L==BlackImage_1(i)).* image_input(:,:,3));
    
    R_avg = mean(nonzeros(avgMat(:,:,1)));
    G_avg = mean(nonzeros(avgMat(:,:,2)));
    B_avg = mean(nonzeros(avgMat(:,:,3)));
   
    Blacks = horzcat(Blacks, [R_avg; G_avg; B_avg]);
end


%% Imagen proyecto110.jpg
image_input = imread('testing/proyecto110.jpg');
[~, L, ~] = getImageStats(image_input);

for i=1:length(RedImage_2)
    avgMat(:,:,1) = (uint8(L==RedImage_2(i)).* image_input(:,:,1));
    avgMat(:,:,2) = (uint8(L==RedImage_2(i)).* image_input(:,:,2));
    avgMat(:,:,3) = (uint8(L==RedImage_2(i)).* image_input(:,:,3));
    
    R_avg = mean(nonzeros(avgMat(:,:,1)));
    G_avg = mean(nonzeros(avgMat(:,:,2)));
    B_avg = mean(nonzeros(avgMat(:,:,3)));
   
    Reds = horzcat(Reds, [R_avg; G_avg; B_avg]);
end

for i=1:length(OrangeImage_2)
    avgMat(:,:,1) = (uint8(L==OrangeImage_2(i)).* image_input(:,:,1));
    avgMat(:,:,2) = (uint8(L==OrangeImage_2(i)).* image_input(:,:,2));
    avgMat(:,:,3) = (uint8(L==OrangeImage_2(i)).* image_input(:,:,3));
    
    R_avg = mean(nonzeros(avgMat(:,:,1)));
    G_avg = mean(nonzeros(avgMat(:,:,2)));
    B_avg = mean(nonzeros(avgMat(:,:,3)));
   
    Oranges = horzcat(Oranges, [R_avg; G_avg; B_avg]);
end


for i=1:length(YellowImage_2)
    avgMat(:,:,1) = (uint8(L==YellowImage_2(i)).* image_input(:,:,1));
    avgMat(:,:,2) = (uint8(L==YellowImage_2(i)).* image_input(:,:,2));
    avgMat(:,:,3) = (uint8(L==YellowImage_2(i)).* image_input(:,:,3));
    
    R_avg = mean(nonzeros(avgMat(:,:,1)));
    G_avg = mean(nonzeros(avgMat(:,:,2)));
    B_avg = mean(nonzeros(avgMat(:,:,3)));
   
    Yellows = horzcat(Yellows, [R_avg; G_avg; B_avg]);
end


for i=1:length(GreenImage_2)
    avgMat(:,:,1) = (uint8(L==GreenImage_2(i)).* image_input(:,:,1));
    avgMat(:,:,2) = (uint8(L==GreenImage_2(i)).* image_input(:,:,2));
    avgMat(:,:,3) = (uint8(L==GreenImage_2(i)).* image_input(:,:,3));
    
    R_avg = mean(nonzeros(avgMat(:,:,1)));
    G_avg = mean(nonzeros(avgMat(:,:,2)));
    B_avg = mean(nonzeros(avgMat(:,:,3)));
   
    Greens = horzcat(Greens, [R_avg; G_avg; B_avg]);
end


for i=1:length(BlueImage_2)
    avgMat(:,:,1) = (uint8(L==BlueImage_2(i)).* image_input(:,:,1));
    avgMat(:,:,2) = (uint8(L==BlueImage_2(i)).* image_input(:,:,2));
    avgMat(:,:,3) = (uint8(L==BlueImage_2(i)).* image_input(:,:,3));
    
    R_avg = mean(nonzeros(avgMat(:,:,1)));
    G_avg = mean(nonzeros(avgMat(:,:,2)));
    B_avg = mean(nonzeros(avgMat(:,:,3)));
   
    Blues = horzcat(Blues, [R_avg; G_avg; B_avg]);
end

for i=1:length(MarineImage_2)
    avgMat(:,:,1) = (uint8(L==MarineImage_2(i)).* image_input(:,:,1));
    avgMat(:,:,2) = (uint8(L==MarineImage_2(i)).* image_input(:,:,2));
    avgMat(:,:,3) = (uint8(L==MarineImage_2(i)).* image_input(:,:,3));
    
    R_avg = mean(nonzeros(avgMat(:,:,1)));
    G_avg = mean(nonzeros(avgMat(:,:,2)));
    B_avg = mean(nonzeros(avgMat(:,:,3)));
   
    Marines = horzcat(Marines, [R_avg; G_avg; B_avg]);
end


for i=1:length(PurpleImage_2)
    avgMat(:,:,1) = (uint8(L==PurpleImage_2(i)).* image_input(:,:,1));
    avgMat(:,:,2) = (uint8(L==PurpleImage_2(i)).* image_input(:,:,2));
    avgMat(:,:,3) = (uint8(L==PurpleImage_2(i)).* image_input(:,:,3));
    
    R_avg = mean(nonzeros(avgMat(:,:,1)));
    G_avg = mean(nonzeros(avgMat(:,:,2)));
    B_avg = mean(nonzeros(avgMat(:,:,3)));
   
    Purples = horzcat(Purples, [R_avg; G_avg; B_avg]);
end


for i=1:length(WhiteImage_2)
    avgMat(:,:,1) = (uint8(L==WhiteImage_2(i)).* image_input(:,:,1));
    avgMat(:,:,2) = (uint8(L==WhiteImage_2(i)).* image_input(:,:,2));
    avgMat(:,:,3) = (uint8(L==WhiteImage_2(i)).* image_input(:,:,3));
    
    R_avg = mean(nonzeros(avgMat(:,:,1)));
    G_avg = mean(nonzeros(avgMat(:,:,2)));
    B_avg = mean(nonzeros(avgMat(:,:,3)));
   
    Whites = horzcat(Whites, [R_avg; G_avg; B_avg]);
end


for i=1:length(GrayImage_2)
    avgMat(:,:,1) = (uint8(L==GrayImage_2(i)).* image_input(:,:,1));
    avgMat(:,:,2) = (uint8(L==GrayImage_2(i)).* image_input(:,:,2));
    avgMat(:,:,3) = (uint8(L==GrayImage_2(i)).* image_input(:,:,3));
    
    R_avg = mean(nonzeros(avgMat(:,:,1)));
    G_avg = mean(nonzeros(avgMat(:,:,2)));
    B_avg = mean(nonzeros(avgMat(:,:,3)));
   
    Grays = horzcat(Grays, [R_avg; G_avg; B_avg]);
end


for i=1:length(BlackImage_2)
    avgMat(:,:,1) = (uint8(L==BlackImage_2(i)).* image_input(:,:,1));
    avgMat(:,:,2) = (uint8(L==BlackImage_2(i)).* image_input(:,:,2));
    avgMat(:,:,3) = (uint8(L==BlackImage_2(i)).* image_input(:,:,3));
    
    R_avg = mean(nonzeros(avgMat(:,:,1)));
    G_avg = mean(nonzeros(avgMat(:,:,2)));
    B_avg = mean(nonzeros(avgMat(:,:,3)));
   
    Blacks = horzcat(Blacks, [R_avg; G_avg; B_avg]);
end


%% 
image_input = imread('testing/proyecto111.jpg');
[~, L, ~] = getImageStats(image_input);

for i=1:length(RedImage_3)
    avgMat(:,:,1) = (uint8(L==RedImage_3(i)).* image_input(:,:,1));
    avgMat(:,:,2) = (uint8(L==RedImage_3(i)).* image_input(:,:,2));
    avgMat(:,:,3) = (uint8(L==RedImage_3(i)).* image_input(:,:,3));
    
    R_avg = mean(nonzeros(avgMat(:,:,1)));
    G_avg = mean(nonzeros(avgMat(:,:,2)));
    B_avg = mean(nonzeros(avgMat(:,:,3)));
   
    Reds = horzcat(Reds, [R_avg; G_avg; B_avg]);
end

for i=1:length(OrangeImage_3)
    avgMat(:,:,1) = (uint8(L==OrangeImage_3(i)).* image_input(:,:,1));
    avgMat(:,:,2) = (uint8(L==OrangeImage_3(i)).* image_input(:,:,2));
    avgMat(:,:,3) = (uint8(L==OrangeImage_3(i)).* image_input(:,:,3));
    
    R_avg = mean(nonzeros(avgMat(:,:,1)));
    G_avg = mean(nonzeros(avgMat(:,:,2)));
    B_avg = mean(nonzeros(avgMat(:,:,3)));
   
    Oranges = horzcat(Oranges, [R_avg; G_avg; B_avg]);
end


for i=1:length(YellowImage_3)
    avgMat(:,:,1) = (uint8(L==YellowImage_3(i)).* image_input(:,:,1));
    avgMat(:,:,2) = (uint8(L==YellowImage_3(i)).* image_input(:,:,2));
    avgMat(:,:,3) = (uint8(L==YellowImage_3(i)).* image_input(:,:,3));
    
    R_avg = mean(nonzeros(avgMat(:,:,1)));
    G_avg = mean(nonzeros(avgMat(:,:,2)));
    B_avg = mean(nonzeros(avgMat(:,:,3)));
   
    Yellows = horzcat(Yellows, [R_avg; G_avg; B_avg]);
end


for i=1:length(GreenImage_3)
    avgMat(:,:,1) = (uint8(L==GreenImage_3(i)).* image_input(:,:,1));
    avgMat(:,:,2) = (uint8(L==GreenImage_3(i)).* image_input(:,:,2));
    avgMat(:,:,3) = (uint8(L==GreenImage_3(i)).* image_input(:,:,3));
    
    R_avg = mean(nonzeros(avgMat(:,:,1)));
    G_avg = mean(nonzeros(avgMat(:,:,2)));
    B_avg = mean(nonzeros(avgMat(:,:,3)));
   
    Greens = horzcat(Greens, [R_avg; G_avg; B_avg]);
end


for i=1:length(BlueImage_3)
    avgMat(:,:,1) = (uint8(L==BlueImage_3(i)).* image_input(:,:,1));
    avgMat(:,:,2) = (uint8(L==BlueImage_3(i)).* image_input(:,:,2));
    avgMat(:,:,3) = (uint8(L==BlueImage_3(i)).* image_input(:,:,3));
    
    R_avg = mean(nonzeros(avgMat(:,:,1)));
    G_avg = mean(nonzeros(avgMat(:,:,2)));
    B_avg = mean(nonzeros(avgMat(:,:,3)));
   
    Blues = horzcat(Blues, [R_avg; G_avg; B_avg]);
end

for i=1:length(MarineImage_3)
    avgMat(:,:,1) = (uint8(L==MarineImage_3(i)).* image_input(:,:,1));
    avgMat(:,:,2) = (uint8(L==MarineImage_3(i)).* image_input(:,:,2));
    avgMat(:,:,3) = (uint8(L==MarineImage_3(i)).* image_input(:,:,3));
    
    R_avg = mean(nonzeros(avgMat(:,:,1)));
    G_avg = mean(nonzeros(avgMat(:,:,2)));
    B_avg = mean(nonzeros(avgMat(:,:,3)));
   
    Marines = horzcat(Marines, [R_avg; G_avg; B_avg]);
end


for i=1:length(PurpleImage_3)
    avgMat(:,:,1) = (uint8(L==PurpleImage_3(i)).* image_input(:,:,1));
    avgMat(:,:,2) = (uint8(L==PurpleImage_3(i)).* image_input(:,:,2));
    avgMat(:,:,3) = (uint8(L==PurpleImage_3(i)).* image_input(:,:,3));
    
    R_avg = mean(nonzeros(avgMat(:,:,1)));
    G_avg = mean(nonzeros(avgMat(:,:,2)));
    B_avg = mean(nonzeros(avgMat(:,:,3)));
   
    Purples = horzcat(Purples, [R_avg; G_avg; B_avg]);
end


for i=1:length(WhiteImage_3)
    avgMat(:,:,1) = (uint8(L==WhiteImage_3(i)).* image_input(:,:,1));
    avgMat(:,:,2) = (uint8(L==WhiteImage_3(i)).* image_input(:,:,2));
    avgMat(:,:,3) = (uint8(L==WhiteImage_3(i)).* image_input(:,:,3));
    
    R_avg = mean(nonzeros(avgMat(:,:,1)));
    G_avg = mean(nonzeros(avgMat(:,:,2)));
    B_avg = mean(nonzeros(avgMat(:,:,3)));
   
    Whites = horzcat(Whites, [R_avg; G_avg; B_avg]);
end


for i=1:length(GrayImage_3)
    avgMat(:,:,1) = (uint8(L==GrayImage_3(i)).* image_input(:,:,1));
    avgMat(:,:,2) = (uint8(L==GrayImage_3(i)).* image_input(:,:,2));
    avgMat(:,:,3) = (uint8(L==GrayImage_3(i)).* image_input(:,:,3));
    
    R_avg = mean(nonzeros(avgMat(:,:,1)));
    G_avg = mean(nonzeros(avgMat(:,:,2)));
    B_avg = mean(nonzeros(avgMat(:,:,3)));
   
    Grays = horzcat(Grays, [R_avg; G_avg; B_avg]);
end


for i=1:length(BlackImage_3)
    avgMat(:,:,1) = (uint8(L==BlackImage_3(i)).* image_input(:,:,1));
    avgMat(:,:,2) = (uint8(L==BlackImage_3(i)).* image_input(:,:,2));
    avgMat(:,:,3) = (uint8(L==BlackImage_3(i)).* image_input(:,:,3));
    
    R_avg = mean(nonzeros(avgMat(:,:,1)));
    G_avg = mean(nonzeros(avgMat(:,:,2)));
    B_avg = mean(nonzeros(avgMat(:,:,3)));
   
    Blacks = horzcat(Blacks, [R_avg; G_avg; B_avg]);
end


%% Output
%[RGB, samples] =  createInputMatrix(Reds, Oranges, Yellows, Greens, Blues, Marines, Purples, Whites, Grays, Blacks);
Reds = Reds';
Oranges = Oranges';
Yellows = Yellows';
Greens = Greens';
Blues = Blues';
Marines = Marines';
Purples = Purples';
Whites = Whites';
Grays = Grays';
Blacks = Blacks';

[C_Red, M_Red] = covmatrix(Reds);
[C_Orange, M_Orange] = covmatrix(Oranges);
[C_Yellow, M_Yellow] = covmatrix(Yellows);
[C_Green, M_Green] = covmatrix(Greens);
[C_Blue, M_Blue] = covmatrix(Blues);
[C_Marine, M_Marine] = covmatrix(Marines);
[C_Purple, M_Purple] = covmatrix(Purples);
[C_White, M_White] = covmatrix(Whites);
[C_Gray, M_Gray] = covmatrix(Grays);
[C_Black, M_Black] = covmatrix(Blacks);

CA = cat(3, C_Red, C_Orange, C_Yellow, C_Green, C_Blue, C_Marine, C_Purple, C_White, C_Gray, C_Black);
MA = cat(2, M_Red, M_Orange, M_Yellow, M_Green, M_Blue, M_Marine, M_Purple, M_White, M_Gray, M_Black);


toc
end

%function []