function [ crunched ] = NNResultCrunch( result )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

result = round(result);
crunched = num2cell(sum(result, 2));

RowNames = {'Canguros'; 'Caracoles'; 'Carreolas'; 'Coches'; 'Conejos';...
    'Corazones'; 'Efelantes'; 'Estrellas'; 'Flores'; 'Fresas'; 'Globos';...
    'Lunas'; 'Mariposas'; 'Monos'; 'Nubes'; 'Osos'; 'Palomas'; 'Pasteles';...
    'Pegasos'; 'Tulipanes'};
crunched = horzcat(RowNames, crunched);

end

