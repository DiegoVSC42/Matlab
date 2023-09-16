function [MNF_bartlett, MDF_bartlett, MNF_welch, MDF_welch, MNF_real, MDF_real] = calc_MNF_MDF(amostras, duracao, freq_amostragem)
     [~, col] = size(amostras);


    if col > 1
         amostras = (amostras(:,1) + amostras (:,2))/2;
    end
    
    amostras = amostras';
    
    amostras = amostras / 10;
    
    % FFT do sinal completo
    sinal_fft = fft(amostras);
    L = length(sinal_fft);
    freqs = freq_amostragem * (0:(L-1))/L;
    
    % MNF e MDF do sinal completo
    MNF_real = sum(freqs .* abs(sinal_fft).^2) / sum(abs(sinal_fft).^2);
    MDF_real = sum(freqs.^2 .* abs(sinal_fft).^2) / sum(abs(sinal_fft).^2);
    
    tam_jan = round((duracao/1000) * freq_amostragem);
    sobrepos = round(tam_jan / 2);
    
    janela = hann(duracao);
    
    [X, ~, ~] = spectrogram(amostras, janela, sobrepos, duracao, freq_amostragem);
    espectrograma = X / max(abs(X(:)));
    espectrograma = flipud(espectrograma);
    
    bartlett = mean(abs(espectrograma).^2, 2);


    tam_espectrograma = size(espectrograma, 2);
    welch = zeros(size(bartlett));
    for i = 1:tam_espectrograma
         welch = welch + abs(espectrograma(:, i)).^2;
    end
    welch = welch / tam_espectrograma;


    MNF_bartlett = freq_media(bartlett, freq_amostragem);
    MDF_bartlett = freq_mediana_potencia(bartlett, freq_amostragem);


    MNF_welch = freq_media(welch, freq_amostragem);
    MDF_welch = freq_mediana_potencia(welch, freq_amostragem);
end
