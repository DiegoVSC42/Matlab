

function [espectrograma, freq_pico] = espectrograma_stft(amostras, duracao, freq_amostragem)
	[~, col] = size(amostras);

	if col > 1
    		amostras = (amostras(:,1) + amostras (:,2))/2; % Colocar o áudio em mono
	end
    
	amostras = amostras';
    
	amostras = amostras / 10; % Diminuir amplitude
	tam_jan = round(duracao * freq_amostragem / 1000);
	sobrepos = round(tam_jan / 2);

	X = spectrogram(amostras, tam_jan, sobrepos);
    
	espectrograma = X / max(abs(X(:)));
	espectrograma = flipud(espectrograma);
    
	blocos = size(espectrograma, 2);
	freq_pico = zeros(1, blocos);

	for n = 1:blocos
    		bloco_espectrograma = espectrograma(:, n);

    		[~, pos_max] = max(bloco_espectrograma);
    		freq_pico(n) = (pos_max - 1) * freq_amostragem / tam_jan;
	end
    
	imshow(abs(espectrograma).^0.1);
end