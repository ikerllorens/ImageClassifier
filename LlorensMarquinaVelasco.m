function Final =  LlorensMarquinaVelasco(image)
tipoFigura = 0;
load('net160Samples.mat');
load('netColors10_9 (best).mat');
%imageName = input('Nombre de imagen: ', 's');
[STATS,L,Im] = getImageStats(image);
netRes = net160Samples(STATS);
Final = [];
for i=1:20
    [Figs,RGB,num,netResNorm] = findFigure(L,Im,i,netRes);
    Colores = netColors10_9(RGB);
    colors;
    Colores = sum(Colores,2);

    Final = horzcat(Final,Colores);
end
figSum = sum(netResNorm,2);
Final = transpose(Final);
sum(Final(:))

end