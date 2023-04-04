% Abre o arquivo em modo de leitura
fid = fopen('teste.txt', 'r');

% Lê todo o conteúdo do arquivo como uma string
texto = fscanf(fid, '%c');

% Fecha o arquivo
fclose(fid);

% Converte a string em um vetor de caracteres
vetor = char(texto);

% Obtém todos os caracteres únicos no vetor
caracteres = unique(vetor);

% Inicializa um vetor contendo o número de ocorrências de cada caractere
ocorrencias = zeros(size(caracteres));

% Conta o número de ocorrências de cada caractere
for i = 1:length(caracteres)
    ocorrencias(i) = sum(vetor == caracteres(i));
end

% Exibe os resultados
disp(['Caractere | Ocorrências']);
disp('----------------------');
for i = 1:length(caracteres)
    fprintf('%9s | %d\n', caracteres(i), ocorrencias(i));
end

