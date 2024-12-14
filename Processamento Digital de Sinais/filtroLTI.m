%% Algoritmo para filtrar um sinal

function y = filtroLTI(b,a,x, cond_inic)

M = length(a) - 1;
N = length(b) - 1;
y = zeros(size(x));

for i = 1:M
    if i <= length(cond_inic)
        y(i) = cond_inic(i);
    end
end

for n = 1:length(x)
    y(n) = b(1)*x(n);
    for k = 1:min(n,N)
        if n-k >= 1 
            y(n) = y(n) + b(k+1)*x(n-k) - a(k+1)*y(n-k);
        end
    end
end

end
