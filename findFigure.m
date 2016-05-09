function [ res ] = findFigure( L,Im,tipo,netRes)
%L viene de regionprops()
%Im es la imagen original RGB
%tipo es la figura de 1-20
%netRes es la respuesta de la red despu?s de un round()

[j,num] = find(netRes(tipo,:)==1);


[col,row] = size(num);
temp = zeros(size(L));
logic = zeros(size(L));

for i = 1:row
    temp = (L == num(col,i));
    logic = logic + temp;
end

Im(:,:,1)=double(Im(:,:,1)).*logic;
Im(:,:,2)=double(Im(:,:,2)).*logic;
Im(:,:,3)=double(Im(:,:,3)).*logic;

res = Im;
end

