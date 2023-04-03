function createBoard

    %cria uma matriz 20x20 composta apenas por 0(cor preta);
    x = zeros(20);
    %cria uma matriz 20x20 composta apenas por 1(cor branca);
    y = ones(20);
    %junta as matrizes horizontalmente ate ter uma linha com 8 blocos
    k = [x,y];
    for i = 1 : 2
        k = [k,k];
    end
    %junta as matrizes horizontalmente ate ter uma linha com 8 blocos porem
    %com ordem inversa das cores
    n = [y,x];
    for i = 1 : 2
        n = [n,n];
    end
    %concatena as duas linhas ate ficar com 8 linhas
    z = [n;k];
    for i = 1 : 2
        z = [z;z];
    end
    imshow(z);
end
