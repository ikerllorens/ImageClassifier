[mx, idx] = max(result);
zer =zeros(size(result));
for i = 1:length(result(1,:)) 
    zer(sub2ind(size(result), idx(i), i)) = 1;
end
result = zer;