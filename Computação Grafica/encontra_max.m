function y = encontra_max(X)
% função que determina o máximo, valor absoluto

[L,C] = size(X);

y = 0;

for i = 1 : L 
    for j = 1 : C
        if abs(X(i,j)) > y
            y = abs(X(i,j));

        end
    end
end
