<<<<<<< HEAD
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

=======
function cut_audio(inFile,begin_cut,end_cut,outFile)

    % Carregando o arquivo de entrada
    [y, fs] = audioread(inFile);
    fs
    size(y)

    % Obtendo os índices correspondentes ao intervalo de tempo
    indice_inicial = round(begin_cut * fs) + 1;
    indice_final = round(end_cut * fs);

    % Realizando o corte no áudio
    audio_cortado = y(indice_inicial:indice_final, :);
    
    % Salvando o áudio cortado em um novo arquivo .wav
    audiowrite(outFile, audio_cortado, fs);

end

>>>>>>> 6e2c1f5f5dbcdf5ba3afecf403fa2fe428132e64
