function espectrograma(x,fs)

    col = size(x,2);

	if col > 1
        x = (x(:,1) + x (:,2))/2; % Colocar o áudio em mono
    end
    
    
   	x = x'; %Transpoe o vetor
    x = x/10; %Diminui a amplitude
    N = 0.025;
    X = spectrogram(x,round(N*fs));
    X = X/max(abs(X(:)));
    X = flipud(X);
    imshow(abs(X).^0.1);
    
end