tipoFigura = 0;
imageName = input('Nombre de imagen: ', 's');
[STATS,L] = getImageStats(imageName);
netRes = net160Samples(STATS);
while(tipoFigura < 20)  
tipoFigura= input('Selecciona figura\n1.Canguros\n2.Caracoles\n3.Carreolas\n4.Coches\n5.Conejos\n6.Corazones\n7.Elefantes\n8.Estrellas\n9.Flores\n10.Fresas\n11.Globos\n12.Lunas\n13.Mariposas\n14.Monos\n15.Nubes\n16.Osos\n17.Palomas\n18.Pasteles\n19.Pegasos\n20.Tulipanes\n');
[Figs,RGB,num,netResNorm] = findFigure(L,Im,tipoFigura,netRes);
figSum = sum(netResNorm,2);
Colores = netColors10_9(RGB);
colors;
imshow(Figs,[]);
end
