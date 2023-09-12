function corta_audio(NomeArquivo, inicioCorte, fimCorte, reproduz)
    % Verifique se o argumento "reproduz" foi fornecido, se não, defina como false
    if nargin < 4
        reproduz = false;
    end

    % Carregar o arquivo .wav
    [inputAudio, sampleRate] = audioread(NomeArquivo);

    % Converter os pontos de início e fim de segundos para amostras
    inicioAmostra = round(inicioCorte * sampleRate);
    fimAmostra = round(fimCorte * sampleRate);

    % Selecionar a parte do áudio desejada
    parteCortada = inputAudio(inicioAmostra:fimAmostra, :);

    % Salvar a parte cortada como um novo arquivo .wav
    audiowrite('parte_cortada.wav', parteCortada, sampleRate);

    % Opcional: reproduzir a parte cortada para verificar
    if reproduz
        sound(parteCortada, sampleRate);
    end

    % Limpar variáveis (opcional)
    clear inputAudio parteCortada;
end
