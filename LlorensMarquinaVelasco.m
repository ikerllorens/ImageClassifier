function Final =  LlorensMarquinaVelasco(image)
tic;
%tipoFigura = 0;
load('NeuralNetworks/Final/netPattern.mat');
load('NeuralNetworks/Final/netColors.mat');
%imageName = input('Nombre de imagen: ', 's');
[STATS,L,Im] = getImageStats(image);
toc
netRes = net(STATS);
toc
Final = [];
for i=1:20
    [~,RGB,~,~] = findFigure(L,Im,i,netRes);
    toc
    Colores = net_col(RGB);
    colors;
    Colores = sum(Colores,2);

    Final = horzcat(Final,Colores);
end
toc
%figSum = sum(netResNorm,2);
Final = transpose(Final);
sum(Final(:))
toc

end