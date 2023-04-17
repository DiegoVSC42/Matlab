function z = convolution(x,y)

    n = length(x);
    m = length(y);
    N = (n + m) - 1 ;
    
    %ADICIONA OS ZEROS A DIREITA
    for(i = 1 : N)
        if(length(x) < N)
            x(length(x) + 1) = 0;
        end
        if(length(y) < N)
            y(length(y) + 1) = 0;
        end
    end
    %---------------------------
    
    %CRIA O VETOR DE SAIDA E O AUXILIAR
    for(i = 1 : N)
        z(i) = 0;
        aux(i) = 0;
    end
    %----------------------------------
    
    %EXECUTA A CONVOLUÇÃO
    for(i = 1 : length(x))        
        if(length(x) > N)
            for(i = 1 : length(x)-1)
                x1(i) = x(i);
            end
            x = x1;
        end
        aux = x * y(i);
        z = z + aux;
        for j = length(x) : -1 : 2
            x(j) = x(j - 1);
            x(j-1) = 0;
        end
        
    end
    %----------------------------------
end