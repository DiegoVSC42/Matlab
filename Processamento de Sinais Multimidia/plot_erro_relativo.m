function plot_erro_relativo(x)
    vet_N = 2:256;
    vet_erros = zeros(1,255);
    for N = 2 : length(vet_N)
        [y, vet_erros(N)] = quantizacao(x,N);
    end

        % Plote o gráfico de Erelat em relação a N.
    figure;
    plot(vet_N,vet_erros);
    xlabel('N');
    ylabel('Erro Relativo');
    title('Erro Relativo x Níveis de Cinza');

    
end

