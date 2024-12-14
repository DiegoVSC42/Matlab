%% Algoritmo para o calculo de entropia
%%
function H = entropia(p)
    tam = length(p);
    H = 0;
    for i = 1 : tam
        p(i) = p(i) + eps;
        H = H - (p(i)*log2(p(i)));
    end
end
%% Dado um vetor p com a probabilidade de cada valor em seu indice o algoritmo retorna o valor da entropia deste vetor