[mx, idx] = max(Colores);
zer =zeros(size(Colores));
for i = 1:length(Colores(1,:)) 
    zer(sub2ind(size(Colores), idx(i), i)) = 1;
end
Colores = zer;