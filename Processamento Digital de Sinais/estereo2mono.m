% Caminho do arquivo .wav de entrada
function estereo2mono(inFile,outFile)

% Ler o arquivo .wav de entrada
[audio, fs] = audioread(inFile);

% Verificar se o áudio já é mono
if size(audio, 2) == 1
    disp('O áudio já é mono.');
    return;
end

% Converter áudio estéreo para mono
audioMono = mean(audio, 2);

% Salvar o novo arquivo .wav mono
audiowrite(outFile, audioMono, fs);

disp('Conversão concluída com sucesso.');

end

