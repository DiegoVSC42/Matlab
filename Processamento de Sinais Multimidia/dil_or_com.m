function y = dil_or_com (x,modo)
    %Guarda a quantidade de linhas e colunas da entrada
    [L,C] = size(x);
    %Parte que faz a dilatação
    if(modo == 'd')
        x_dil = zeros(L*2,C*2);
        for i = 1 : L
            for j = 1 : C
                atual = x(i,j);
                x_dil(i+i-1,j+j-1) = atual;
                x_dil(i+i-1+1,j+j-1) = atual;
                x_dil(i+i-1,j+j-1+1) = atual;
                x_dil(i+i-1+1,j+j-1+1) = atual;
            end
        end
        y = x_dil;
   %Parte que faz a compressão 
    else 
        if (modo == 'c')
            [L,C] = size(x);
            x_com = zeros(round(L/2),round(C/2));
            [L,C] = size(x_com);
            for i = 1 : L
                for j = 1 : C
                    atual = x(i+i-1,j+j-1);
                    x_com(i,j) = atual;
                    x_com(i+1,j) = atual;
                    x_com(i,j+1) = atual;
                    x_com(i+1,j+1) = atual;
                end
            end
            %Deixando do tamanho correto pois estava gerando uma linha e uma coluna
            %extra
            x_com = x_com(1:end-1, 1:end-1);
            y = x_com;
        end
    end
end