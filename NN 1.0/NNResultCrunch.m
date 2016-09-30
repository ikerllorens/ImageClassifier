function [ crunched ] = NNResultCrunch( result )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

[mx, idx] = max(result);
zer =zeros(size(result));
for i = 1:length(result(1,:)) 
    zer(sub2ind(size(result), idx(i), i)) = 1;
end
result = zer;

crunched = num2cell(sum(result, 2));

RowNames = {'Canguros'; 'Caracoles'; 'Carreolas'; 'Coches'; 'Conejos';...
    'Corazones'; 'Efelantes'; 'Estrellas'; 'Flores'; 'Fresas'; 'Globos';...
    'Lunas'; 'Mariposas'; 'Monos'; 'Nubes'; 'Osos'; 'Palomas'; 'Pasteles';...
    'Pegasos'; 'Tulipanes'};
crunched = horzcat(RowNames, crunched);

end

