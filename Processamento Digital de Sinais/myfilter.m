function y = myfilter(b, a, x, cond_inic)
% Implementação básica da função filter do MATLAB com condições iniciais

% Inicializa as variáveis
N = length(x);
M = length(b);
L = length(a);
y = zeros(1,N);

% Adiciona os termos de condição inicial na saída
for k = 1:min(M,length(cond_inic))
    for n = k:N
        y(n) = y(n) + b(k)*cond_inic(k)*x(n-k+1);
    end
end

% Calcula a saída do filtro
for n = max(M+1,length(cond_inic))+1:N
    for k = 1:M
        y(n) = y(n) + b(k)*x(n-k+1);
    end
    for k = 2:L
        y(n) = y(n) - a(k)*y(n-k+1);
    end
    y(n) = y(n)/a(1);
end

end
