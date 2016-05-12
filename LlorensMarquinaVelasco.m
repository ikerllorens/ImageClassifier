function Final =  LlorensMarquinaVelasco(image)
%tipoFigura = 0;
load('NeuralNetworks/Final/netPattern.mat');
load('NeuralNetworks/Final/netColors.mat');
%imageName = input('Nombre de imagen: ', 's');
[STATS,L,Im] = getImageStats(image);
netRes = net(STATS);
Final = [];
for i=1:20
    [~,RGB,~,~] = findFigure(L,Im,i,netRes);
    Colores = net_col(RGB);
    colors;
    Colores = sum(Colores,2);

    Final = horzcat(Final,Colores);
end
%figSum = sum(netResNorm,2);
Final = transpose(Final);
sum(Final(:))

end