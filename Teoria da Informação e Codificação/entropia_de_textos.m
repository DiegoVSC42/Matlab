
function entropia_de_textos(arquivo)
    
    % Le o arquivo e adiciona seu texto a uma string
    fid = fopen(arquivo, 'r');
    texto = fscanf(fid, '%c');
    fclose(fid);

    % Converte a string em um vetor
    vetor = char(texto);
        
    % Cria um vetor e coloca todos os caracteres nele sem repeticao
    caracteres = unique(vetor);

    % Cria um vetor para atribuir a quantidade de ocorrencias de cada
    % caractere
    ocorrencias = zeros(size(caracteres));

    % Conta o número de ocorrências de cada caractere
    % Lembrete: o primeiro valor a ser contado é o caractere nulo, a cada
    % quebra de linha existe um caractere nulo
    for i = 1:length(caracteres)
        ocorrencias(i) = sum(vetor == caracteres(i));
        probabilidade(i) = ocorrencias(i) / length(caracteres);
    end
    
    %Exibe os resultados
    disp(['Caractere | Ocorrências | Probabilidade | Entropia']);
    disp('----------------------------------------------------');        
    for i = 1:length(caracteres)
        fprintf('%9s | %d | %.2f | %.2f\n', caracteres(i), ocorrencias(i),probabilidade(i),entropia(probabilidade));
        
    end
 

end
