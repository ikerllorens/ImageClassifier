function [ res , RGB,num,zer] = findFigure( L,Im,tipo,netRes)
%L viene de regionprops()
%Im es la imagen original RGB
%tipo es la figura de 1-20
%netRes es la respuesta de la red

%netRes = round(netRes);

[mx, idx] = max(netRes);
zer =zeros(size(netRes));
for i = 1:length(netRes(1,:)) 
    zer(sub2ind(size(netRes), idx(i), i)) = 1;
end
netRes = zer;


[j,num] = find(netRes(tipo,:)==1);

RGB = [];
pos=[];

[col,row] = size(num);
temp = zeros(size(L));
logic = zeros(size(L));

for i = 1:row
    temp = (L == num(col,i));
    logic = logic + temp;
    
    %%%%%%%%
    actual = (L == num(col,i));
    [X,Y] = find(actual == 1);

    R = Im(X, Y, 1);
    G = Im(X, Y, 2);
    B = Im(X, Y, 3);

    R_avg = mean(R(:));
    G_avg = mean(G(:));
    B_avg = mean(B(:));
    
    
    RGB = horzcat(RGB, [R_avg; G_avg; B_avg]);
    %%%%%%%%%
end

RGB = round(RGB);

Im(:,:,1)=double(Im(:,:,1)).*logic;
Im(:,:,2)=double(Im(:,:,2)).*logic;
Im(:,:,3)=double(Im(:,:,3)).*logic;

res = Im;

%% 830

% 
% actual = (L == num);
% [X,Y] = find(actual == 1);
% 
% R = Im(X, Y, 1);
% G = Im(X, Y, 2);
% B = Im(X, Y, 3);
% 
% R_avg = mean(R);
% G_avg = mean(G);
% B_avg = mean(B);



end

%actual = (L == num)
%[X,Y] = find(actual == 1)

%R = Im(X(100), Y(100), 1);
%G = Im(X(100), Y(100), 2);
%B = Im(X(100), Y(100), 3);