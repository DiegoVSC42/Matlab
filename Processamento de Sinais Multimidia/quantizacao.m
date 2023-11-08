function [y, erro_relativo] = quantizacao (x,N)
    %cria um vetor com os niveis de quantizacao entre 0 e 1
    niveis = linspace(0,1,N);
    %faz a interpolação dos niveis com a imagem
    y = interp1(niveis, niveis, x, 'nearest');
    
    [L,C] = size(x);
    num = zeros(L,C);
    den = num;
    for i = 1 : L
        for j = 1 : C
            num(i,j) = (abs(x(i,j) - y(i,j)))^2;
            den(i,j) = (abs(x(i,j)))^2;
        end
    end
    erro_relativo = num/den;
    %transformando em um unico valor obtendo a média da matriz
    erro_relativo = mean(erro_relativo(:));
end