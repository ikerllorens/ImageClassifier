function Final =  LlorensMarquinaVelasco(image)
tic;
%tipoFigura = 0;
load('NeuralNetworks/Final/netPattern.mat');
%load('NeuralNetworks/Final/netColors.mat');
load('CA_Final.mat')
load('MA_Final.mat')
%imageName = input('Nombre de imagen: ', 's');
[STATS,L,Im] = getImageStats(image);
%toc
netRes = net(STATS);
%toc
Final = [];
for i=1:20
    [~,RGB,~,~] = findFigure(L,Im,i,netRes);
    %toc
    RGB = RGB';
    Result= [];
    if  ~isempty(RGB) 
     Result = bayesgauss(RGB, CA, MA);
    
    end
    %Colores = net_col(RGB);
    %colors;
    %Colores = sum(Colores,2);
    Colores = zeros(1,10);
    for j=1:numel(Result)
     
        Colores(Result(j)) = Colores(Result(j)) + 1;
    end
    
    Final = vertcat(Final,Colores);
end
%toc
%figSum = sum(netResNorm,2);
%Final = transpose(Final);
sum(Final(:))
toc

end