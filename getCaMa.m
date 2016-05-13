function [ CA, MA ] = getCaMa( RGB_input )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

Red = RGB_input(:, 1:20);
Orange = RGB_input(:, 21:40);
Yellow = RGB_input(:, 41:60);
Green = RGB_input(:, 61:80);
Blue = RGB_input(:, 81:100);
Marine = RGB_input(:, 101:120);
Purple = RGB_input(:, 121:140);
White = RGB_input(:, 141:160);
Gray = RGB_input(:, 161:180);
Black = RGB_input(:, 181:200);

Red = Red';
Orange = Orange';
Yellow = Yellow';
Green = Green';
Blue = Blue';
Marine = Marine';
Purple = Purple';
White = White';
Gray = Gray';
Black = Black';

[C_Red, M_Red] = covmatrix(Red);
[C_Orange, M_Orange] = covmatrix(Orange);
[C_Yellow, M_Yellow] = covmatrix(Yellow);
[C_Green, M_Green] = covmatrix(Green);
[C_Blue, M_Blue] = covmatrix(Blue);
[C_Marine, M_Marine] = covmatrix(Marine);
[C_Purple, M_Purple] = covmatrix(Purple);
[C_White, M_White] = covmatrix(White);
[C_Gray, M_Gray] = covmatrix(Gray);
[C_Black, M_Black] = covmatrix(Black);

CA = cat(3, C_Red, C_Orange, C_Yellow, C_Green, C_Blue, C_Marine, C_Purple, C_White, C_Gray, C_Black);
MA = cat(2, M_Red, M_Orange, M_Yellow, M_Green, M_Blue, M_Marine, M_Purple, M_White, M_Gray, M_Black);


end

