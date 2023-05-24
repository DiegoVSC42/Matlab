function cut_audio(inFile,begin_cut,end_cut,outFile)

    % Carregando o arquivo de entrada
    [y, fs] = audioread(inFile);

    % Obtendo os índices correspondentes ao intervalo de tempo
    indice_inicial = round(begin_cut * fs) + 1;
    indice_final = round(end_cut * fs);

    % Realizando o corte no áudio
    audio_cortado = y(indice_inicial:indice_final, :);
    
    % Salvando o áudio cortado em um novo arquivo .wav
    audiowrite(outFile, audio_cortado, fs);

end

